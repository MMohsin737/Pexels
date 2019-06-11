
import "dart:math" as math;

/// The [Endpoints] class contains the set of URL that the Pexels API support.
abstract class Endpoints {

  static const _apiURLBase = "https://api.pexels.com";
  static const _apiURLPartPhoto = "v1";
  static const _apiURLPartVideo = "videos";

// Photo Endpoints.

  static String photo(int id) {
    return "$_apiURLBase/$_apiURLPartPhoto/photos/$id";
  }

  static String photoRandom() {
    return Endpoints.photoSearchCurated(perPage: 1,page: 1+math.Random().nextInt(1000)); // page: random value in [1,1000] range.
  }

  static String photoSearch(String query, {perPage = 15, page = 1}) {
    return "$_apiURLBase/$_apiURLPartPhoto/search?query=$query&per_page=$perPage&page=$page";
  }

  static String photoSearchCurated({perPage = 15, page = 1}) {
    return "$_apiURLBase/$_apiURLPartPhoto/curated?per_page=$perPage&page=$page";
  }

  static String photoSearchPopular({perPage = 15, page = 1}) {
    return "$_apiURLBase/$_apiURLPartPhoto/popular?per_page=$perPage&page=$page";
  }


  // Video Endpoints.

  static String videoRandom() {
    return Endpoints.videoSearchCurated(perPage: 1,page: 1+math.Random().nextInt(1000)); // page: random value in [1,1000] range.
  }

  static String video(int id) {
    return "$_apiURLBase/$_apiURLPartVideo/videos/$id";
  }

  static String videoSearch(String query, {perPage = 15, page = 1}) {
    return "$_apiURLBase/$_apiURLPartVideo/search?query=$query&per_page=$perPage&page=$page";
  }

  static String videoSearchPopular({perPage = 15, page = 1}) {
    return "$_apiURLBase/$_apiURLPartVideo/popular?per_page=$perPage&page=$page";
  }

  static String videoSearchCurated({perPage = 15, page = 1}) {
    return "$_apiURLBase/$_apiURLPartVideo/curated?per_page=$perPage&page=$page";
  }
}
