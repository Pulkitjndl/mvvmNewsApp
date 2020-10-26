class Constants {
  static const String API_KEY = 'c18318a87d844ae9a5454e341df31792';
  static const String TOP_HEADLINES_URL =
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=c18318a87d844ae9a5454e341df31792';

  static String headlinesFor(String country) {
    return 'https://newsapi.org/v2/top-headlines?country=$country&apiKey=c18318a87d844ae9a5454e341df31792';
  }

  static const Map<String, String> Countries = {
    "United States of America": "us",
    "India": "in",
    "Korea": "kr",
    "China": "ch"
  };
}
