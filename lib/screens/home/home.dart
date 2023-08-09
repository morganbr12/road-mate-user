import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:road_mate_user/widgets/drawer/my_drawer.dart';
import 'package:road_mate_user/widgets/home/home_search_container.dart';
import 'package:road_mate_user/widgets/routes/navigator.dart';
import 'package:road_mate_user/widgets/utils/color/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool show = false;

  GoogleMapController? _mapController;
  Location _location = Location();
  late LatLng _currentLocation;
  Set<Marker> _markers = {};
  bool _showLocator = true;

  @override
  void initState() {
    super.initState();
    _location.onLocationChanged.listen((LocationData locationData) {
      setState(() {
        _currentLocation =
            LatLng(locationData.latitude!, locationData.longitude!);
        _markers.clear();
        _markers.add(
          Marker(
            markerId: MarkerId("current_location"),
            position: _currentLocation,
            icon: BitmapDescriptor.defaultMarker,
          ),
        );
      });

      // Toggle the visibility of the locator marker for blinking effect
      Future.delayed(Duration(milliseconds: 500), () {
        setState(() {
          _showLocator = !_showLocator;
        });
      });
    });
  }

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
  }

  final internalCameraPosition = const CameraPosition(
    target: LatLng(5.64645075, -0.191042),
    zoom: 13,
  );

  void viewGoogleMap() {
    secondaryNavigator(context, routeTo: '/googleMap');
  }

  void showIconsInPrimaryInput(String value) {
    setState(() {
      show = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: GestureDetector(
            onTap: () {
              _scaffoldKey.currentState!.openDrawer();
            },
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primaryColor,
              ),
              child: const Icon(
                Icons.menu,
                color: AppColors.whiteColor,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              size: 40,
            ),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          GoogleMap(
            initialCameraPosition: internalCameraPosition,
            mapType: MapType.normal,
            liteModeEnabled: Platform.isAndroid ? true : false,
            myLocationButtonEnabled: false,
            onMapCreated: _onMapCreated,
            markers: _showLocator ? _markers : {},
          ),
          HomeSearchContainer(
            showIconsInPrimaryInput: showIconsInPrimaryInput,
            show: show,
          ),
        ],
      ),
      drawer: const MyDrawer(),
      extendBodyBehindAppBar: true,
    );
  }
}
