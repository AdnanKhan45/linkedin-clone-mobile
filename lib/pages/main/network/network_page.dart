
import 'package:flutter/material.dart';
import 'package:linkedin_mobile_ui/data/network_entity.dart';
import 'package:linkedin_mobile_ui/pages/main/network/widgets/single_network_user_widget.dart';
import 'package:linkedin_mobile_ui/theme/styles.dart';

class NetworkPage extends StatefulWidget {
  const NetworkPage({super.key});

  @override
  State<NetworkPage> createState() => _NetworkPageState();
}

class _NetworkPageState extends State<NetworkPage> {

  List<NetworkEntity> networkData = NetworkEntity.networkData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Manage my network",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: linkedInBlue0077B5),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: linkedInMediumGrey86888A,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              height: 8,
              color: linkedInLightGreyCACCCE,
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Invitations",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: linkedInBlue0077B5),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: linkedInMediumGrey86888A,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              height: 8,
              color: linkedInLightGreyCACCCE,
            ),
            const SizedBox(
              height: 15,
            ),



            GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemCount: networkData.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 6,
                  crossAxisSpacing: 6,
                  childAspectRatio: 0.6),
              itemBuilder: (context, index) {
                final network = networkData[index];
                return SingleNetworkUserWidget(network: network);
              },
            )
          ],
        ),
      ),
    );
  }
}
