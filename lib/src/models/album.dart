// Copyright (c) 2017, rinukkusu. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of spotify;

@JsonClass()
class Album implements AlbumSimple {
  /// The type of the album: one of "album", "single", or "compilation".
  @JsonField(key: 'album_type')
  String albumType;

  /**
   * The artists of the album. Each artist object includes a link in href to 
   * more detailed information about the artist.
   */
  List<ArtistSimple> artists;

  /**
   * The markets in which the album is available: ISO 3166-1 alpha-2 country 
   * codes. Note that an album is considered available in a market when at least
   * 1 of its tracks is available in that market.
   */
  @JsonField(key: 'available_markets')
  List<String> availableMarkets;

  // /// Known external URLs for this album.
  //@JsonField(key: 'external_urls')
  //Map<String, String> externalUrls;

  /// A link to the Web API endpoint providing full details of the album.
  String href;

  /// The Spotify ID for the album.
  String id;

  /// The cover art for the album in various sizes, widest first.
  List<Image> images;

  /**
   * The name of the album. In case of an album takedown, the value may be an 
   * empty string.
   */
  String name;

  /// The object type: "album"
  String type;

  /// The Spotify URI for the album.
  String uri;

  /// The copyright statements of the album.
  List<Copyright> copyrights;

  // /// Known external IDs for the album.
  //@JsonField(key: 'external_ids')
  //Map<String, String> externalIds;

  /**
   * A list of the genres the artist is associated with. 
   * For example: 
   *     "Prog Rock", "Post-Grunge". 
   * 
   * (If not yet classified, the array is empty.) 
   */
  List<String> genres;

  /// The label for the album.
  String label;

  /**
   * The popularity of the artist. The value will be between 0 and 100, with 100
   * being the most popular. The artist's popularity is calculated from the 
   * popularity of all the artist's tracks.
   */
  int popularity;

  /**
   * The date the album was first released, for example "1981-12-15". 
   * Depending on the precision, it might be shown as "1981" or "1981-12".
   */
  @JsonField(key: 'release_date')
  String releaseDate;

  /**
   * The precision with which release_date value is known: 
   *     "year", "month", or "day".
   */
  @JsonField(key: 'release_date_precision')
  String releaseDatePrecision;
}

@JsonClass()
class AlbumSimple {
  /// The type of the album: one of "album", "single", or "compilation".
  @JsonField(key: 'album_type')
  String albumType;

  /**
   * The artists of the album. Each artist object includes a link in href to 
   * more detailed information about the artist.
   */
  List<ArtistSimple> artists;

  /**
   * The markets in which the album is available: ISO 3166-1 alpha-2 country 
   * codes. Note that an album is considered available in a market when at least
   * 1 of its tracks is available in that market.
   */
  @JsonField(key: 'available_markets')
  List<String> availableMarkets;

  // /// Known external URLs for this album.
  //@JsonField(key: 'external_urls')
  //Map<String, String> externalUrls;

  /// A link to the Web API endpoint providing full details of the album.
  String href;

  /// The Spotify ID for the album.
  String id;

  /// The cover art for the album in various sizes, widest first.
  List<Image> images;

  /**
   * The name of the album. In case of an album takedown, the value may be an 
   * empty string.
   */
  String name;

  /// The object type: "album"
  String type;

  /// The Spotify URI for the album.
  String uri;
}

@JsonClass()
class Copyright {
  /// The copyright text for this album.
  String text;

  /// The type of copyright:
  ///     C = the copyright
  ///     P = the sound recording (performance) copyright.
  String type;
}
