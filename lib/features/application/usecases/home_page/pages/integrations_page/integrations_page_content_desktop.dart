import 'package:cybear_jinni_site/features/application/shared_widgets/bottom_navigation_menu/bottom_navigation_menu.dart';
import 'package:cybear_jinni_site/features/application/usecases/home_page/pages/integrations_page/device_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Integrations page content for the desktop
class IntegrationsPageContentDesktop extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      thickness: 13,
      controller: _scrollController,
      child: ListView(
        controller: _scrollController,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                color: Colors.black26,
                width: double.infinity,
                padding: const EdgeInsets.only(bottom: 20),
                height: 180,
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Text('Supported Vendors',
                      style: TextStyle(
                          fontSize: 50,
                          color: Theme.of(context).textTheme.bodyText1!.color),
                      textAlign: TextAlign.center),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black38,
                    border: Border(
                      top: BorderSide(
                        color: Theme.of(context).textTheme.bodyText1!.color!,
                      ),
                      left: BorderSide(
                        color: Theme.of(context).textTheme.bodyText1!.color!,
                      ),
                      right: BorderSide(
                        color: Theme.of(context).textTheme.bodyText1!.color!,
                      ),
                    )),
                padding: const EdgeInsets.symmetric(vertical: 100),
                width: MediaQuery.of(context).size.width - 200,
                child: Container(
                  margin: const EdgeInsets.only(left: 300, right: 300),
                  child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    primary: true,
                    childAspectRatio: (MediaQuery.of(context).size.width) /
                        (MediaQuery.of(context).size.height / 0.5),
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 30,
                    crossAxisCount: 3,
                    children: [
                      DeviceCard(
                        'Xiaomi Yeelight',
                        'https://play-lh.googleusercontent.com/bteU9OSFF9z596eUOkGgM3XpWF2-b1VsKvmwWFitaI4qMwVPmx3lS09fHFDx8-CX3Q=s180',
                        'https://www.yeelight.com',
                      ),
                      DeviceCard(
                        'Switcher',
                        'https://play-lh.googleusercontent.com/8L6vVAT2cC78V622nxSznr7Mm_MgMsH25TopH-ZIm5HMwAHRy0qTX29FlHF6_kbBsQ=s180',
                        'https://switcher.co.il',
                      ),
                      DeviceCard(
                        'MQTT',
                        'https://i.ibb.co/hfRhB0Q/mqtt-logo.png',
                        'https://mqtt.org',
                      ),
                      DeviceCard(
                        'Tasmota',
                        'https://i.ibb.co/XZLGCRd/Tasmota-logo.png',
                        'https://tasmota.github.io',
                      ),
                      DeviceCard(
                        'ESPHome',
                        'https://i.ibb.co/W2YG23s/ESPHome-logo.png',
                        'https://esphome.io',
                      ),
                      DeviceCard(
                        'Node-RED',
                        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fnodered.org%2Fabout%2Fresources%2Fmedia%2Fnode-red-icon.png&f=1&nofb=1',
                        'https://nodered.org/',
                      ),
                    ],
                  ),
                ),
              ),
              BottomNavigationMenu(),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
