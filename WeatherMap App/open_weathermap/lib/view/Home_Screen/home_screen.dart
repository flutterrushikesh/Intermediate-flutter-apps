import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:open_weathermap/model/weather_model.dart';
import 'package:open_weathermap/controller/weather_controller.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State createState() => _HomeScreenState();
}

class _HomeScreenState extends State {
  //create a instance of textediting controller to store user entered value stores in controller
  TextEditingController getLocationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ///MEASURE A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(75, 96, 128, 1),
      body: Provider.of<WeatherController>(context).inProgress
          //inProgress true the this block execute that is circular progress Indicator.
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            )

          ///ELSE FALSE IT CHECK THE USER ENTERED CITY NAME SEARCH BOX EMPTY THEN THIS BLOCK EXECUETS.

          : Provider.of<WeatherController>(context).isError

              ///IT ANY ERROR FOUND EXECUTES THIS BLOCK THAT IS ALERTBOX.
              ? AlertDialog(
                  title: Row(
                    children: [
                      const Icon(
                        Icons.error_outlined,
                        size: 35,
                        color: Colors.red,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Text(
                          'Please enter valid city name',
                          style: GoogleFonts.poppins(
                            // color: Colors.whi,
                            fontSize: screenWidth * 0.041,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  content: Text(
                    '${Provider.of<WeatherController>(context, listen: false).obj.myError.myMessage}',
                    style: GoogleFonts.poppins(
                      fontSize: screenWidth * 0.036,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  actionsAlignment: MainAxisAlignment.center,
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        Provider.of<WeatherController>(context, listen: false)
                            .isErrorCheck();
                        getLocationController.clear();
                      },
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          Color.fromRGBO(75, 96, 128, 1),
                        ),
                      ),
                      child: Text(
                        'Retry',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                )

              //Else this block extecute .
              //in this block check the internet connection is on or off.
              : Provider.of<WeatherController>(context, listen: false)
                      .isInternetConnection
                  ? Padding(
                      padding: EdgeInsets.all(screenHeight * 0.018),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: screenHeight * 0.05,
                            ),
                            TextFormField(
                              controller: getLocationController,
                              cursorColor: Colors.black,
                              cursorWidth: 1.5,
                              style: GoogleFonts.inter(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                suffixIcon: const Icon(Icons.search),
                                hintText: "Search city eg. Pune",
                                hintStyle: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                                contentPadding: const EdgeInsets.all(13),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: screenHeight * 0.15,
                            ),
                            Image.asset(
                              'assets/images/search location.png',
                              height: 350,
                            ),
                          ],
                        ),
                      ),
                    )

                  //Else internet connectios is off this block executes that is alertbox widget.
                  : AlertDialog(
                      title: Row(
                        children: [
                          const Icon(
                            Icons.wifi_off,
                            color: Colors.red,
                            size: 30,
                          ),
                          SizedBox(width: screenWidth * 0.02),
                          Text(
                            "You're offline",
                            style: GoogleFonts.poppins(
                              fontSize: screenWidth * 0.041,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      content: Text(
                        "Please check your internet connection",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      actionsAlignment: MainAxisAlignment.center,
                      actions: [
                        ElevatedButton(
                          onPressed: () async {
                            //create instance of connevity to check internet connections.
                            final List<ConnectivityResult> connectivityResult =
                                await (Connectivity().checkConnectivity());
                            //Checks in internet connection.
                            if (connectivityResult
                                    .contains(ConnectivityResult.mobile) ||
                                connectivityResult
                                    .contains(ConnectivityResult.wifi)) {
                              // ignore: use_build_context_synchronously
                              Provider.of<WeatherController>(context,
                                      listen: false)
                                  .isChecknternetConnection();
                              getLocationController.clear();
                            }
                          },
                          style: const ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              Color.fromRGBO(75, 96, 128, 1),
                            ),
                          ),
                          child: Text(
                            'Reconnect',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),

      //Floaationg action Button to user enterd city name data fetch.
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          //access boolean varible from provider
          Provider.of<WeatherController>(context, listen: false)
              .inProgressCheck();

          //create instance of connevity to check internet connections.
          final List<ConnectivityResult> connectivityResult =
              await (Connectivity().checkConnectivity());

          //checks the internet connectivity.
          // if connectivity satisfily they navigate to satisfy condition.
          if (connectivityResult.contains(ConnectivityResult.mobile) ||
              connectivityResult.contains(ConnectivityResult.wifi)) {
            //calls the getWeatherData method using provider.
            //and pass the user entered location to API.
            // ignore: use_build_context_synchronously
            await Provider.of<WeatherController>(context, listen: false)
                .getWeatherData(getLocationController.text);

            Future.delayed(
              const Duration(seconds: 2),
              () async {
                //call the inProgressCheck to false the condition.
                // ignore: use_build_context_synchronously
                Provider.of<WeatherController>(context, listen: false)
                    .inProgressCheck();
                //if the stored value in WeatherController null && stored object's
                //runtimeTimeType is Weathermodel then satisfy this condition &
                //navigates following screen.
                // ignore: use_build_context_synchronously
                if (Provider.of<WeatherController>(context, listen: false)
                            .obj !=
                        null &&
                    Provider.of<WeatherController>(context, listen: false)
                            .obj
                            .runtimeType ==
                        WeatherModel) {
                  //here used named routing to navigate other screen.
                  Navigator.of(context).pushNamed('weatherScreen');

                  //Create instance of shared preference to store the user enter city.
                  SharedPreferences pref =
                      await SharedPreferences.getInstance();

                  //setString() store the string here store the user searched city.

                  await pref.setString('location', getLocationController.text);

                  //setBool() store the bool value.
                  await pref.setBool('isSearchLocation', false);
                } else {
                  Provider.of<WeatherController>(context, listen: false)
                      .isErrorCheck();
                }
              },
            );
          } else {
            //call this method to check the internet connection flag handle.
            Provider.of<WeatherController>(context, listen: false)
                .isChecknternetConnection();

            //call this method the check flag because off circular progrssbar.
            Provider.of<WeatherController>(context, listen: false)
                .inProgressCheck();
          }
        },
        backgroundColor: Colors.white,
        elevation: 5,
        label: Text(
          'Check Weather',
          style: GoogleFonts.poppins(
            fontSize: screenWidth * 0.035,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
