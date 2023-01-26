import 'package:edu/color.dart';
import 'package:edu/widgets/btn.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                // Close button Row
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Iconsax.close_square,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                // profile card Container
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 41, 41, 41)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Icon(
                          Iconsax.profile_circle,
                          size: 50,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ashvin Choudhry',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Student',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                // Category
                SizedBox(
                  height: 15,
                ),
                Row(children: [
                  Text(
                    'Basic',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 48, 48, 48)),
                  )
                ]),
                ListTile(
                  leading: Icon(
                    Iconsax.setting_24,
                  ),
                  title: Text('Setting'),
                  trailing: Icon(Iconsax.arrow_right_3),
                  horizontalTitleGap: 1,
                ),
                ListTile(
                  leading: Icon(
                    Iconsax.security_safe,
                  ),
                  title: Text('Privacy Policy'),
                  trailing: Icon(Iconsax.arrow_right_3),
                  horizontalTitleGap: 1,
                ),
                ListTile(
                  onTap: () {
                    print('how to use the app');
                  },
                  leading: Icon(
                    Iconsax.information,
                  ),
                  title: Text('How to use the App'),
                  trailing: Icon(Iconsax.arrow_right_3),
                  horizontalTitleGap: 1,
                )
              ],
            ),
          )),
        ),
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: Text('Code With Dhruv'),
          actions: [
            Icon(
              Iconsax.notification1,
              size: 30,
            ),
            SizedBox(
              width: 15,
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              child: Image.network(
                  'https://lh3.googleusercontent.com/0Hegy9_s6mQRRwTOmbPBo8a2nn94mkzM0hNFyAZPbEmebDrmECNx3R0NpflxofwXY6Yi8HB59yidXtBtSFA-wwRTbaUSfpu0wgRRMTOw6qaTXurbBE-WFdOnkHTeUL2vdimW2mH-VDc2Guq4tM5wL80v7wTPM-PWeglTm-4zq1Ki5Qmw84pf0YoZf8TgT_vG8sfN2M1YwHsWRQL938AVd9azRaWLWuAJI6Re8FXi3dzORY4hR2y5lNausVJ8Sk9Znla8suTHh3L3Xr33KepzooiVdlVQOUatI48n80JCp5SFHahQMX_WCYChzOyRA2lC9x-W167M4QF-M1oGjHAkRAuuOqVfYuKEbHRzohnUmDFctvq2eHY7mvZwQdmDpdtMMZPX7m5HZ_bkC44oGAHD20cGITnRui9SGGlhs8FUOatX9Io6b5c7xevg9Edukh-iPqXI5usZHWF4LjWTv_SzhBc82YFOjTkAiuhDfxC-dFyfg1iXW1OMOROcoZHhtCDkSQoJW7md50OOgdMLl1APUpaavApwKqk-OXM9yg8e9itpusjXED3Q2pmgNyCOVWQUzMLg4iFHUjSah1XcUJbGVmQqR2WN8vDMx8Z2p_iuf_wVabkkpeTM_D2l_zO_alnL2HxlTldPs0D2TMVcZIna98NIjVJdEBr3ukK8d8uJUChBPoefEVgSDv7UahoqDGNjawprCzDNbv02uJew0fqWIzGGfKuOtPyoDg3Od35qllSaoH0Is4jUJYHikLimQs9ST8AKFPYpbRFmUUXSXz7uyfLR9gQdTxvdH_ELqE03PcHSQuNL82luUMIMSJZxb4G1hs_T5QZuelXyFesK703A9bjXzqn0iUZ-glA2FstP-zTqShsv_X0cCVWijyHGcZnuhqhJNGUYLH9oHNyXeNo6Zd-684xQKG-8s9DrWPoAmzn_=w418-h174-no?authuser=0'),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Filter',
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 40, 50, 70)),
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        InputChip(
                          label: Text('Flutter'),
                          onSelected: (bool value) {},
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InputChip(
                          label: Text('Django'),
                          onSelected: (bool value) {},
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InputChip(
                          label: Text('Web'),
                          onSelected: (bool value) {},
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InputChip(
                          label: Text('Top Selling'),
                          onSelected: (bool value) {},
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InputChip(
                          label: Text('Design'),
                          onSelected: (bool value) {},
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InputChip(
                          label: Text('HTML CSS JS'),
                          onSelected: (bool value) {},
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InputChip(
                          label: Text('Figma'),
                          onSelected: (bool value) {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'Continue Learning',
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 40, 50, 70)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 238, 238, 238),
                              spreadRadius: 1,
                              blurRadius: 5),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                        padding: EdgeInsets.all(1),
                        child: Row(
                          children: [
                            Image.network(
                                'https://lh3.googleusercontent.com/DaNwQAcm7x-sOkXQsJf9vrYGC23dC0m_UtmcFKtsLU0QrVMsTKyoWHSHOnKUhFDq4NMMfwJg2pyhzupHU4_9jP6ENHg1HZP5W7ZY-SkUcyvemmNP97GpvBx76H8qKn3eGifwHvw724zscF5Mw-52tQC_v3wQkXh_GbZkUAUJ1blMFiSkHTzn6nXHgOK0pClv-RmlYHG3jLo-nCT6QXI3Tzyi3VnR6Iw2zpwMGqdGRMW3ar_7V-xXFQ5okxZcGEgNMVbVK7g1IM5TOHmHRF3HhIaDODWPXyHGP-mr-5URggiseCeCi_ETxVxUrvB4WEaAQM3DO0MDJYvy4577A0Jxt3UV9KoxqtBbMFNjyNnt-BrcwpW3AQYRCE18WqE1LqJSeYmchIzDFEEaeHH6LgjBtle33NFug-SbG589R6vHSvoHIk5Lbj5lKqCo_rgCYONatfI0G51oyMTyCArkYE-NV3v28TvlkYjmxIVRDwoljn-NXDFSELRJTX1Vdh_1vZfNYMg70IrIFJBv_ZdaX25Qru4wCoOgW0IVKdl3ojZXiamSVKGwbPiSWrziGzFElMd8ktg4fFeuv_-tLviZP43aiF7-5yhft5yKusJ0i4HV30r9Pf03wEO8Fdud3ZzU56ZyRbVqdFryIKPZIUGr-6rxp-_cMZJRcYC8IZA3IkssU77uJkITQrjFfPJ2rto6_YmCMD6-kr_2MBHkkudIul5YaNdAgQDvCA303901sZ59SeU3jlrRsTfiW0jfIHAHnskGJ--V0I6CwrPRpuhEir21gT_3jIH3VZ67db7FqdLKmeNCmcg7v742Pz-jWlEXfa3g8_kfO1GMo4D2pX_mMkYwJIHPE6SpBrzr9SU2drfqx0fGwW7FB8kjewd8JEDoygYjpFEcCapye6OrUN9N9FRrecA0oaHlC5wp8Sz6ApTmybq6=w227-h133-no?authuser=0'),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Python Complete Course',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  Text(
                                    '2/20 video watched',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        color: primaryColor),
                                  ),
                                  Text(
                                    '21 days to expire.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        color: primaryColor),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'New out there',
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 40, 50, 70)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 220,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 238, 238, 238),
                                    spreadRadius: 1,
                                    blurRadius: 5),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        10), // Image border
                                    child: SizedBox.fromSize(
                                      // Image radius
                                      child: Image.network(
                                          'https://lh3.googleusercontent.com/XpgYeyMOH9_mZkgnmEWIFFTYqVKfF0_NjD4632JZvax_r19cpqVF58LlDg_uocDhr0WR27wtB9asGX8DxiJkNTUusmxFfsf9Omt2RfBRIl0WzTVOmZFhkgJb6rFEQd2vhAVpzO4-luVYE0GPIfMtatlerpeJlEo5BO7tO6muETVFakr_iDpY1CTaSpSXcwt2lkmPye1eYenf3SV9e-k737M4vM5YexQY23qj50MZuaJJyFqFcFd6eD9VfZGPkm9LcwEwfEaALcC9f2SibcvGmLxwXDfQA6hbSQwsSfcDzmH4XG33TYcATGUfQKyT7LrMylG25Eqg09SWgtMFLJ_oZuT6s8sQvmrrePXz_A3WZoxw5hXxDSTI3BHUVdyxGnQaQdrUK1i6m7UKfHdumvmSR9QxRzb7KH7yOu1QB9Glwmas9sy_8xGFr-uTXy6_3xVyPOyXkujtKmvp_3DZzMayf9Cp-I5M6-JM3Jpc4NClU-ehv1Lr2SAv4QjtsmdHFRKDcBICg1B73--Lpg9HNLh8wKI_lEmKC72e3dcBOd1tQ8sn9y8Ovd3c1q2swRRXTKBwimgLAUfpDt9NVqgbkGBcxSkxJyLdRNC4vHB02elcJ6H9rUwT4FF8GuP4wuWYihAIGK5-_dqD-pyfQogHKVoUbv95hAh7t8HS8lx5wdkiOO8FLPP_i8yQzwonWA3cvIIUdiysm9YU4nAQaPHBZdP1xuL6v1QVxXa2jZjMm_XAc2_W7G-SBq4LGs8yMun6CpL7uH07yZ_mh5z9qoY50Y5giXFPoTXZzARXRvUns6pQFua-Mn0ydRYxvddWRaFVrEC77OfaNKPqHZAEUeH8cmEJzJy13EqitcJ7NwxC7y-bVaQ-j_Sios_bLZSnCYTk08arAflVu0m7meXiC2xrp7oxfPQGWt24oDwfm81r9H3PN2Ww=w1280-h720-no?authuser=0',
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Python complete course',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      ),
                                      Text(
                                        'Duration • 2h 32m ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            color: primaryColor),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Iconsax.star1,
                                            size: 18,
                                            color: Colors.amber,
                                          ),
                                          Icon(
                                            Iconsax.star1,
                                            size: 18,
                                            color: Colors.amber,
                                          ),
                                          Icon(
                                            Iconsax.star1,
                                            size: 18,
                                            color: Colors.amber,
                                          ),
                                          Icon(
                                            Iconsax.star1,
                                            size: 18,
                                            color: Colors.amber,
                                          ),
                                          SizedBox(
                                            width: 2.5,
                                          ),
                                          Icon(
                                            Iconsax.star,
                                            size: 14,
                                            color: Colors.amber,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      )
                                    ],
                                  ),
                                  ElevatedButton(
                                    onPressed: null,
                                    child: Text(
                                      'Get The Course',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    style: ButtonStyle(
                                        minimumSize: MaterialStateProperty.all(
                                            Size(400, 40)),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                primaryColor)),
                                  )
                                ],
                              )),
                        ),
                        Container(
                          width: 220,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 238, 238, 238),
                                    spreadRadius: 1,
                                    blurRadius: 5),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        10), // Image border
                                    child: SizedBox.fromSize(
                                      // Image radius
                                      child: Image.network(
                                          'https://lh3.googleusercontent.com/XpgYeyMOH9_mZkgnmEWIFFTYqVKfF0_NjD4632JZvax_r19cpqVF58LlDg_uocDhr0WR27wtB9asGX8DxiJkNTUusmxFfsf9Omt2RfBRIl0WzTVOmZFhkgJb6rFEQd2vhAVpzO4-luVYE0GPIfMtatlerpeJlEo5BO7tO6muETVFakr_iDpY1CTaSpSXcwt2lkmPye1eYenf3SV9e-k737M4vM5YexQY23qj50MZuaJJyFqFcFd6eD9VfZGPkm9LcwEwfEaALcC9f2SibcvGmLxwXDfQA6hbSQwsSfcDzmH4XG33TYcATGUfQKyT7LrMylG25Eqg09SWgtMFLJ_oZuT6s8sQvmrrePXz_A3WZoxw5hXxDSTI3BHUVdyxGnQaQdrUK1i6m7UKfHdumvmSR9QxRzb7KH7yOu1QB9Glwmas9sy_8xGFr-uTXy6_3xVyPOyXkujtKmvp_3DZzMayf9Cp-I5M6-JM3Jpc4NClU-ehv1Lr2SAv4QjtsmdHFRKDcBICg1B73--Lpg9HNLh8wKI_lEmKC72e3dcBOd1tQ8sn9y8Ovd3c1q2swRRXTKBwimgLAUfpDt9NVqgbkGBcxSkxJyLdRNC4vHB02elcJ6H9rUwT4FF8GuP4wuWYihAIGK5-_dqD-pyfQogHKVoUbv95hAh7t8HS8lx5wdkiOO8FLPP_i8yQzwonWA3cvIIUdiysm9YU4nAQaPHBZdP1xuL6v1QVxXa2jZjMm_XAc2_W7G-SBq4LGs8yMun6CpL7uH07yZ_mh5z9qoY50Y5giXFPoTXZzARXRvUns6pQFua-Mn0ydRYxvddWRaFVrEC77OfaNKPqHZAEUeH8cmEJzJy13EqitcJ7NwxC7y-bVaQ-j_Sios_bLZSnCYTk08arAflVu0m7meXiC2xrp7oxfPQGWt24oDwfm81r9H3PN2Ww=w1280-h720-no?authuser=0',
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Python complete course',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      ),
                                      Text(
                                        'Duration • 2h 32m ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            color: primaryColor),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Iconsax.star1,
                                            size: 18,
                                            color: Colors.amber,
                                          ),
                                          Icon(
                                            Iconsax.star1,
                                            size: 18,
                                            color: Colors.amber,
                                          ),
                                          Icon(
                                            Iconsax.star1,
                                            size: 18,
                                            color: Colors.amber,
                                          ),
                                          Icon(
                                            Iconsax.star1,
                                            size: 18,
                                            color: Colors.amber,
                                          ),
                                          SizedBox(
                                            width: 2.5,
                                          ),
                                          Icon(
                                            Iconsax.star,
                                            size: 14,
                                            color: Colors.amber,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      )
                                    ],
                                  ),
                                  ElevatedButton(
                                    onPressed: null,
                                    child: Text(
                                      'Get The Course',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    style: ButtonStyle(
                                        minimumSize: MaterialStateProperty.all(
                                            Size(400, 40)),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                primaryColor)),
                                  )
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
