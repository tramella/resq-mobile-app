import '../models/auth/login_response.dart';

const String baseUrl = env['BASE_URL'] ?? '';
String wsBaseUrl = env['WS_BASE_URL'] ?? '';
final String mapboxToken = env['MAPBOX_TOKEN'] ?? '';

String get token => loginResponse?.token ?? '';

Map<String, String> get headers => {
  'Content-Type': 'application/json',
  'Authorization': 'Bearer $token',
};

const String verifyUrl = '$baseUrl/api/resq/verify';
const String customerUrl = '$baseUrl/api/resq/customer';
const String partnerUrl = "$baseUrl/api/resq/partner";
const String avatarUrl = "$baseUrl/uploads/avatar";
const String paymentUrl = "$baseUrl/api/paypal";
const String partner_chatUrl = "$baseUrl/api/resq/partner-chat";
const String resqUrl = "$baseUrl/api/resq";
