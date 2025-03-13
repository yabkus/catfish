import 'package:catfish/api_integration/result_to_data.dart';
import 'package:catfish/api_integration/user_info_body.dart';
import 'package:catfish/api_integration/user_info_response.dart';
import 'package:catfish/api_integration/user_info_response_put.dart';
import 'package:catfish/api_integration/userinfo.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioClient {
  final Dio dio = Dio();

  final baseUrl = "https://reqres.in/api";

//This method will be used to get users info

  Future<UserInfo> getUser(String id) async {
    Response userData = await dio.get("$baseUrl/users/$id");

    //debugPrint('User Info: ${userData.data}');

    UserInfo user = UserInfo.fromJson(userData.data);

    debugPrint('Users FirstName: ${user.data?.firstName}');
    debugPrint('Users LastName: ${user.data?.lastName}');
    debugPrint('Users Email: ${user.data?.email}');
    debugPrint('Users Text: ${user.support?.text}');

    return user;
  }

  //This method will be used to Create users

  Future<UserInfoResponse?> createUser(UserInfoBody userInfoBody) async {
    UserInfoResponse? userInfoResponse;
    Response userData = await dio.put("$baseUrl/users",
        options: Options(headers: {
          'Content-Type': 'application/json',
        }),
        data: UserInfoBody(name: userInfoBody.name, job: userInfoBody.job));

    // UserInfo user = UserInfo.fromJson(userData.data);

    debugPrint('User Created: ${userData.data}');

    userInfoResponse = UserInfoResponse.fromJson(userData.data);

    return userInfoResponse;
  }

  Future<UserInfoList> getUserList() async {
    Response userData = await dio.get("$baseUrl/users");

    debugPrint('User Info: ${userData.data}');

    return UserInfoList.fromJson(userData.data);
  }

  Future<UserInfoData?> updateUser(int id, UserInfoBody userInfoBody) async {
    UserInfoData? userInfoResponse;
    Response userData = await dio.post("$baseUrl/users/$id",
        options: Options(headers: {
          'Content-Type': 'application/json',
        }),
        data: UserInfoBody(name: userInfoBody.name, job: userInfoBody.job));

    // UserInfo user = UserInfo.fromJson(userData.data);

    debugPrint('User Updated: ${userData.data}');

    userInfoResponse = UserInfoData.fromJson(userData.data);

    return userInfoResponse;
  }
}
