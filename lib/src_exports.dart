library app;

///Dart
export 'dart:io' hide HeaderValue;
export 'dart:async';
export 'dart:convert';
export 'dart:math';

///Flutter
export 'package:flutter/material.dart';
export 'package:flutter/foundation.dart';
export 'package:flutter/services.dart';

///Theme & Styling
export './src/mics/app_style/app_colors.dart';
export './src/mics/app_style/theme.dart';

///Controller
export './src/module/auth/auth_controller.dart';
export './src/module/base_controller.dart';

///Service
export './src/service/app_service.dart';
export './src/service/pref_sevice.dart';

///Models
export './src/models/response_model.dart';
export './src/models/user_model.dart';
export './src/models/emuns.dart';

///Screen & View
export './src/module/auth/login_screen.dart';
export './src/module/auth/signup_screen.dart';
export './src/module/auth/forget_password.dart';
export './src/utils/widgets/loagin_view.dart';
export './src/utils/widgets/error_view.dart';

///Plugins
export 'package:get/get.dart' hide FormData, MultipartFile, Response;
export 'package:get_storage/get_storage.dart';
export 'package:package_info_plus/package_info_plus.dart';
export 'package:device_info_plus/device_info_plus.dart';
export 'package:dio/dio.dart';

///Utils & Const
export './src/utils/const/key_const.dart';
export './src/utils/const/asset_const.dart';
export './src/utils/const/url_const.dart';
export './src/utils/logger.dart';
export './src/mics/localization/localization.dart';

///Navigation
export './src/navigation/pages.dart';
export './src/navigation/routes.dart';
export './src/navigation/bindings.dart';
export './src/navigation/middelware.dart';
