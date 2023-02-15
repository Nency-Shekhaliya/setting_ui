import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MySettingui(),
  );
}

class MySettingui extends StatefulWidget {
  const MySettingui({Key? key}) : super(key: key);

  @override
  State<MySettingui> createState() => _MySettinguiState();
}

class _MySettinguiState extends State<MySettingui> {
  bool isandroid = false;
  bool lock = true;
  bool fing = false;
  bool pass = true;
  @override
  Widget build(BuildContext context) {
    return isandroid
        ? MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: AppBar(
                title: const Text("Setting UI"),
                backgroundColor: Colors.red,
                actions: [
                  Switch(
                      activeColor: Colors.white,
                      trackColor: MaterialStateProperty.all(
                          Colors.white.withOpacity(0.5)),
                      value: isandroid,
                      onChanged: (val) {
                        setState(() {
                          isandroid = val;
                        });
                      })
                ],
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Mycon2(
                      titlename: "Common",
                    ),
                    Container(
                      height: 70,
                      color: const Color(0xfffffdff),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.language,
                            color: Colors.grey,
                            size: 25,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Language",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "English",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 70,
                      color: const Color(0xfffffdff),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.cloud_queue,
                            color: Colors.grey,
                            size: 25,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Environment",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "Production",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Mycon2(titlename: "Account"),
                    Container(
                      height: 60,
                      color: const Color(0xfffffdff),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.call,
                            color: CupertinoColors.inactiveGray,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text("Phone Number"),
                        ],
                      ),
                    ),
                    Container(
                      height: 60,
                      color: const Color(0xfffffdff),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.mail,
                            color: CupertinoColors.inactiveGray,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text("Email"),
                        ],
                      ),
                    ),
                    Container(
                      height: 60,
                      color: const Color(0xfffffdff),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.login_outlined,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text("Sign Out"),
                        ],
                      ),
                    ),
                    Mycon2(titlename: "Security"),
                    Container(
                      height: 60,
                      color: const Color(0xfffffdff),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.phonelink_lock,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          const Text("Lock app in background"),
                          const SizedBox(
                            width: 75,
                          ),
                          Transform.scale(
                            scale: 0.9,
                            child: Switch(
                                activeColor: CupertinoColors.destructiveRed,
                                value: lock,
                                onChanged: (val) {
                                  setState(() {
                                    lock = val;
                                  });
                                }),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 60,
                      color: const Color(0xfffffdff),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.fingerprint,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          const Text("Use fingerprint"),
                          const SizedBox(
                            width: 130,
                          ),
                          Transform.scale(
                              scale: 0.9,
                              child: Switch(
                                  activeColor: Colors.red,
                                  value: fing,
                                  onChanged: (val) {
                                    setState(() {
                                      fing = val;
                                    });
                                  }))
                        ],
                      ),
                    ),
                    Container(
                      height: 60,
                      color: const Color(0xfffffdff),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.lock,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          const Text("Change password"),
                          const SizedBox(
                            width: 110,
                          ),
                          Transform.scale(
                              scale: 0.9,
                              child: Switch(
                                  activeColor: Colors.red,
                                  value: pass,
                                  onChanged: (val) {
                                    setState(() {
                                      pass = val;
                                    });
                                  }))
                        ],
                      ),
                    ),
                    Mycon2(titlename: "Misc"),
                    Container(
                      height: 60,
                      color: const Color(0xfffffdff),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.text_snippet_rounded,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text("Terms of Service"),
                        ],
                      ),
                    ),
                    Container(
                      height: 60,
                      color: const Color(0xfffffdff),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.file_copy_outlined,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text("Open Source licenses"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        : CupertinoApp(
            debugShowCheckedModeBanner: false,
            theme: const CupertinoThemeData(brightness: Brightness.light),
            home: Builder(
              builder: (context) => CupertinoPageScaffold(
                navigationBar: CupertinoNavigationBar(
                  backgroundColor: CupertinoColors.destructiveRed,
                  middle: const Text(
                    "Setting UI",
                    style: TextStyle(color: CupertinoColors.white),
                  ),
                  trailing: Transform.scale(
                    scale: 0.8,
                    child: CupertinoSwitch(
                        activeColor: Colors.white,
                        trackColor: CupertinoColors.white.withOpacity(0.5),
                        value: isandroid,
                        onChanged: (val) {
                          setState(() {
                            isandroid = val;
                          });
                        }),
                  ),
                ),
                backgroundColor: const Color(0xfff2eff8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Mycon(titlename: "Common"),
                    Container(
                      height: 50,
                      color: const Color(0xfffffdff),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.language,
                            color: CupertinoColors.inactiveGray,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Language"),
                          SizedBox(
                            width: 165,
                          ),
                          Text(
                            "English",
                            style: TextStyle(
                              fontSize: 16,
                              color: CupertinoColors.inactiveGray,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 18,
                            color: CupertinoColors.inactiveGray,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      color: const Color(0xfffffdff),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.cloud_queue,
                            color: CupertinoColors.inactiveGray,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Environment"),
                          SizedBox(
                            width: 120,
                          ),
                          Text(
                            "Production",
                            style: TextStyle(
                              fontSize: 16,
                              color: CupertinoColors.inactiveGray,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 18,
                            color: CupertinoColors.inactiveGray,
                          ),
                        ],
                      ),
                    ),
                    Mycon(titlename: "Account"),
                    Container(
                      height: 50,
                      color: const Color(0xfffffdff),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.call,
                            color: CupertinoColors.inactiveGray,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text("Phone Number"),
                          SizedBox(
                            width: 175,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 18,
                            color: CupertinoColors.inactiveGray,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      color: const Color(0xfffffdff),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.mail,
                            color: CupertinoColors.inactiveGray,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text("Email"),
                          SizedBox(
                            width: 242,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 18,
                            color: CupertinoColors.inactiveGray,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      color: const Color(0xfffffdff),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.login_outlined,
                            color: CupertinoColors.inactiveGray,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Sign Out"),
                          SizedBox(
                            width: 227,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 18,
                            color: CupertinoColors.inactiveGray,
                          ),
                        ],
                      ),
                    ),
                    Mycon(titlename: "Security"),
                    Container(
                      height: 50,
                      color: const Color(0xfffffdff),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.phonelink_lock,
                            color: CupertinoColors.inactiveGray,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text("Lock app in background"),
                          const SizedBox(
                            width: 75,
                          ),
                          Transform.scale(
                            scale: 0.8,
                            child: CupertinoSwitch(
                                activeColor: CupertinoColors.destructiveRed,
                                value: lock,
                                onChanged: (val) {
                                  setState(() {
                                    lock = val;
                                  });
                                }),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      color: const Color(0xfffffdff),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.fingerprint,
                            color: CupertinoColors.inactiveGray,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text("Use fingerprint"),
                          const SizedBox(
                            width: 140,
                          ),
                          Transform.scale(
                              scale: 0.8,
                              child: CupertinoSwitch(
                                  activeColor: CupertinoColors.destructiveRed,
                                  value: fing,
                                  onChanged: (val) {
                                    setState(() {
                                      fing = val;
                                    });
                                  }))
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      color: const Color(0xfffffdff),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.lock,
                            color: CupertinoColors.inactiveGray,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text("Change password"),
                          const SizedBox(
                            width: 115,
                          ),
                          Transform.scale(
                              scale: 0.8,
                              child: CupertinoSwitch(
                                  activeColor: CupertinoColors.destructiveRed,
                                  value: pass,
                                  onChanged: (val) {
                                    setState(() {
                                      pass = val;
                                    });
                                  }))
                        ],
                      ),
                    ),
                    Mycon(titlename: "Misc"),
                    Container(
                      height: 50,
                      color: const Color(0xfffffdff),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.text_snippet_rounded,
                            color: CupertinoColors.inactiveGray,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text("Terms of Service"),
                          SizedBox(
                            width: 160,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 18,
                            color: CupertinoColors.inactiveGray,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      color: const Color(0xfffffdff),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.file_copy_outlined,
                            color: CupertinoColors.inactiveGray,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text("Open Source licenses"),
                          SizedBox(
                            width: 125,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 18,
                            color: CupertinoColors.inactiveGray,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }

  Mycon({required String titlename}) => Container(
        height: 30,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          titlename,
          style: const TextStyle(fontSize: 14, color: Colors.grey),
        ),
      );
  Mycon2({required String titlename}) => Container(
        height: 30,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          titlename,
          style: const TextStyle(color: Colors.red),
        ),
      );
}
