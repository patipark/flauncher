/*
 * FLauncher
 * Copyright (C) 2021  Étienne Fesser
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

import 'package:flutter/services.dart';

class FLauncherChannel {
  static const MethodChannel _channel =
      const MethodChannel('me.efesser.flauncher');

  Future<List<dynamic>> getInstalledApplications() async =>
      (await _channel.invokeMethod<List<dynamic>>('getInstalledApplications'))!;

  Future<void> launchApp(String packageName, String className) async =>
      await _channel.invokeMethod('launchApp', [packageName, className]);

  Future<void> openSettings() async =>
      await _channel.invokeMethod('openSettings');
}
