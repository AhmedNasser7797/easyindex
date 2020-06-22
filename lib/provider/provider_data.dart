import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easyindex/model/data.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class ProviderData with ChangeNotifier{
//  String authToken;
//  String userId;
//  ProviderData(this.authToken,this.userId,this._items);

List _items=[];

List<Data> get items=>[..._items];

Future<Data> getAllData()async{
  final data=await Firestore.instance.collection('userData').document('userId').get();
//_items.add(Data(
//  minutes: data.data['minutes'],
//  bpmHeart: data.data['bpmHeart'],
//  cals: data.data['cals'],
//  floors: data.data['floors'],
//  km: data.data['km'],
//  numDay: data.data['numDay'],
//  sleepHouers: data.data['sleepHouers'],
//));
//notifyListeners();
}

}