// // Copyright 2013 The Flutter Authors. All rights reserved.
// // Use of this source code is governed by a BSD-style license that can be
// // found in the LICENSE file.
//
// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';
// import 'package:movie_app/navbar.dart';
//
//
//
// class Myapps extends StatefulWidget {
//   @override
//   MyappsPageState createState() => MyappsPageState();
// }
//
// class MyappsPageState extends State<Myapps> {
//   bool _slowAnimations = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Material Transitions')),
//       body: Column(
//         children: <Widget>[
//           Expanded(
//             child: ListView(
//               children: <Widget>[
//                 _TransitionListTile(
//                   title: 'Container transform',
//                   subtitle: 'OpenContainer',
//                   onTap: () {
//                     Navigator.of(context).push(
//                       MaterialPageRoute<void>(
//                         builder: (BuildContext context) {
//                           return  navbar();
//                         },
//                       ),
//                     );
//                   },
//                 ),
//                 _TransitionListTile(
//                   title: 'Shared axis',
//                   subtitle: 'SharedAxisTransition',
//                   onTap: () {
//                     Navigator.of(context).push(
//                       MaterialPageRoute<void>(
//                         builder: (BuildContext context) {
//                           return  navbar();
//                         },
//                       ),
//                     );
//                   },
//                 ),
//                 _TransitionListTile(
//                   title: 'Fade through',
//                   subtitle: 'FadeThroughTransition',
//                   onTap: () {
//                     Navigator.of(context).push(
//                       MaterialPageRoute<void>(
//                         builder: (BuildContext context) {
//                           return  navbar();
//                         },
//                       ),
//                     );
//                   },
//                 ),
//                 _TransitionListTile(
//                   title: 'Fade',
//                   subtitle: 'FadeScaleTransition',
//                   onTap: () {
//                     Navigator.of(context).push(
//                       MaterialPageRoute<void>(
//                         builder: (BuildContext context) {
//                           return  navbar();
//                         },
//                       ),
//                     );
//                   },
//                 ),
//               ],
//             ),
//           ),
//           const Divider(height: 0.0),
//           SafeArea(
//             child: SwitchListTile(
//               value: _slowAnimations,
//               onChanged: (bool value) async {
//                 setState(() {
//                   _slowAnimations = value;
//                 });
//                 // Wait until the Switch is done animating before actually slowing
//                 // down time.
//                 if (_slowAnimations) {
//                   await Future<void>.delayed(const Duration(seconds: 1));
//                 }
//                 timeDilation = _slowAnimations ? 20.0 : 1.0;
//               },
//               title: const Text('Slow animations'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class _TransitionListTile extends StatelessWidget {
//   const _TransitionListTile({
//     this.onTap,
//     required this.title,
//     required this.subtitle,
//   });
//
//   final GestureTapCallback? onTap;
//   final String title;
//   final String subtitle;
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       contentPadding: const EdgeInsets.symmetric(
//         horizontal: 15.0,
//       ),
//       leading: Container(
//         width: 40.0,
//         height: 40.0,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20.0),
//           border: Border.all(
//             color: Colors.black54,
//           ),
//         ),
//         child: const Icon(
//           Icons.play_arrow,
//           size: 35,
//         ),
//       ),
//       onTap: onTap,
//       title: Text(title),
//       subtitle: Text(subtitle),
//     );
//   }
// }