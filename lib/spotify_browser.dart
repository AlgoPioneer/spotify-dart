// Copyright (c) 2017, rinukkusu. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library spotify;

import 'dart:async';
import 'dart:convert';

import 'package:http/browser_client.dart' as http;
import 'package:owl/annotation/json.dart';

import 'spotify_browser.json.g.dart';

import 'src/models/token_request.dart';
import 'src/models/token_request.json.g.dart';

part 'src/models/artist.dart';
part 'src/models/followers.dart';
part 'src/models/image.dart';
part 'src/models/album.dart';
part 'src/models/track.dart';
part 'src/models/playlist.dart';
part 'src/models/user.dart';
part 'src/models/audio_feature.dart';

part 'src/endpoints/endpoint_base.dart';
part 'src/endpoints/artists.dart';
part 'src/endpoints/albums.dart';
part 'src/endpoints/tracks.dart';
part 'src/endpoints/playlists.dart';
part 'src/endpoints/users.dart';
part 'src/endpoints/audio_features.dart';

part 'src/spotify_credentials.dart';

part 'src/spotify_base.dart';
part 'src/spotify_browser.dart';
