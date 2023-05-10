import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class BonjuurGPTCall {
  static Future<ApiCallResponse> call({
    String? messages = '',
  }) {
    final body = '''
{
  "messages": [
    {
      "role": "system",
      "content": "You are a robot that only answers with JSON format.\\n\\nI will give you some sentences from an audiofile. When you see a sentence, consider sentiment of it and then you must match the sentence with the most suitable\\nitem from the list here (you must only select one of them):\\n\\n-clean the counter\\n-clean the wall\\n-make the bed\\n\\nAfter selecting 1 item from the list above, find the relevant raw from the table here:\\n\\n(You won't hear about \\"room-type\\" and \\"id\\"; you will find them from the table here that i gave you.  consider \\"to-do\\" columns of this table.(Find the most  suitable one from this table's \\"to-do\\" column)\\n\\nid,room,to-do,is-done\\nki_d_1,kitchen,Sweep counterlop,true or false\\nki_d_2,kitchen,Sweep stovetop,true or false\\nki_d_3,kitchen,Sweep floors,true or false\\nki_d_4,kitchen,Empty dishwasher,true or false\\nki_d_5,kitchen,Clean the dishes / Put them to dishwasher,true or false\\nki_d_6,kitchen,Empty coffee machine pods,true or false\\nki_d_7,kitchen,Empty trash,true or false\\nki_d_8,kitchen,Fill coffee machine water,true or false\\ndiro_d_1,dining-room,Sweep floors,true or false\\ndiro_d_2,dining-room,Sweep diningtable,true or false\\ndiro_d_3,dining-room,Chairs in place,true or false\\nofstu_d_1,office-and-study,Sweep floors,true or false\\nofstu_d_2,office-and-study,Empty trash,true or false\\nofstu_d_3,office-and-study,Sweep desk,true or false\\nfaro_d_1,family-room,Sweep floors,true or false\\nfaro_d_2,family-room,Sweep diningtable,true or false\\nfaro_d_3,family-room,Chairs in place,true or false\\nba_d_1,bathroom,Sweep floors,true or false\\nba_d_2,bathroom,Clean sink,true or false\\nba_d_3,bathroom,Clean mirror stains,true or false\\nba_d_4,bathroom,Vacuum floors for hair,true or false\\nba_d_5,bathroom,Wet wipe countertop,true or false\\nba_d_6,bathroom,\\"Clean  and disinfect toilet bowl, seat, lid, tank, flush handle and base\\",true or false\\nbe_d_1,bedroom,Make the bed (tidy),true or false\\nbe_d_2,bedroom,Sweep floors,true or false\\nbe_d_3,bedroom,Fill bedside water,true or false\\nbe_d_4,bedroom,Fill humidifier,true or false\\nki_w_1,kitchen,Vacuum and mop floors,true or false\\nki_w_2,kitchen,Clean countertop,true or false\\nki_w_3,kitchen,Clean microwave,true or false\\nki_w_4,kitchen,Clean stovetop,true or false\\nki_w_5,kitchen,Clean appliance surface,true or false\\ndiro_w_1,dining-room,Wet wipe dining table,true or false\\ndiro_w_2,dining-room,Vacuum and mop floors,true or false\\ndiro_w_3,dining-room,Vacuum upholstered furniture,true or false\\ndiro_w_4,dining-room,Above China cabinets | Grandfather clocks,true or false\\ndiro_w_5,dining-room,Wet  wipe baseboards,true or false\\ndiro_w_6,dining-room,\\"Window sills, door trim\\",true or false\\ndiro_w_7,dining-room,Both sides 6 panel doors,true or false\\nofstu_w_1,office-and-study,Vacuum and mop floors,true or false\\nofstu_w_2,office-and-study,Vacuum upholstered furniture,true or false\\nofstu_w_3,office-and-study,Above China cabinets | Grandfather clocks,true or false\\nofstu_w_4,office-and-study,Wet wipe baseboards,true or false\\nofstu_w_5,office-and-study,\\"Window sills, door trim\\",true or false\\nofstu_w_6,office-and-study,Both sides 6 panel doors,true or false\\nfaro_w_1,family-room,Vacuum and mop floors,true or false\\nfaro_w_2,family-room,Vacuum upholstered furniture,true or false\\nfaro_w_3,family-room,Above China cabinets | Grandfather clocks,true or false\\nfaro_w_4,family-room,Wet wipe baseboards,true or false\\nfaro_w_5,family-room,\\"Window sills, door trim\\",true or false\\nfaro_w_6,family-room,Both sides 6 panel doors,true or false\\nba_w_1,bathroom,Wet wipe all items on countertop,true or false\\nba_w_2,bathroom,Mop floors,true or false\\nba_w_3,bathroom,\\"Clean and disinfect shower, bathtub\\",true or false\\nba_w_4,bathroom,Wet wipe baseboards,true or false\\nba_w_5,bathroom,Wipe down shower window,true or false\\nba_w_6,bathroom,Change towels,true or false\\nba_w_7,bathroom,Cobwebs,true or false\\nbe_w_1,bedroom,Change sheets,true or false\\nbe_w_2,bedroom,\\"Recessed lighting, lights, lamps, lampshades\\",true or false\\nbe_w_3,bedroom,Ceiling fan,true or false\\nbe_w_4,bedroom,Crown molding,true or false\\nbe_w_5,bedroom,Vacuum and mop floors,true or false\\nbe_w_6,bedroom,Wet wipe baseboards,true or false\\nbe_w_7,bedroom,Both sides 6 panel doors,true or false\\nki_m_1,kitchen,Deep clean inside oven,true or false\\nki_m_2,kitchen,Deep clean inside microwave,true or false\\nki_m_3,kitchen,Deep clean & polish coffee machine,true or false\\nki_m_4,kitchen,Deep clean & polish blender,true or false\\nki_m_5,kitchen,Deep clean & polish toaster,true or false\\nki_m_6,kitchen,Steam floors,true or false\\nki_m_7,kitchen,Wet wipe blinds,true or false\\nki_m_8,kitchen,Wet wipe baseboards,true or false\\nki_m_9,kitchen,Wall dusting,true or false\\nki_m_10,kitchen,Both sides 6 panel doors,true or false\\ndiro_m_1,dining-room,Steam floors,true or false\\ndiro_m_2,dining-room,\\"Wet wipe shelves, trinkets, knick-knacks\\",true or false\\ndiro_m_3,dining-room,\\"Recessed lighting, lights, lamps, lampshades\\",true or false\\ndiro_m_4,dining-room,Ceiling fan,true or false\\ndiro_m_5,dining-room,Crown molding,true or false\\ndiro_m_6,dining-room,Cobwebs,true or false\\ndiro_m_7,dining-room,Wet wipe blinds,true or false\\ndiro_m_8,dining-room,Wall dusting,true or false\\nofstu_m_1,office-and-study,Steam floors,true or false\\nofstu_m_2,office-and-study,\\"Wet wipe shelves, trinkets, knick-knacks\\",true or false\\nofstu_m_3,office-and-study,\\"Recessed lighting, lights, lamps, lampshades\\",true or false\\nofstu_m_4,office-and-study,Ceiling fan,true or false\\nofstu_m_5,office-and-study,Crown molding,true or false\\nofstu_m_6,office-and-study,Cobwebs,true or false\\nofstu_m_7,office-and-study,Wet wipe blinds,true or false\\nofstu_m_8,office-and-study,Wall dusting,true or false\\nfaro_m_1,family-room,Steam floors,true or false\\nfaro_m_2,family-room,\\"Wet wipe shelves, trinkets, knick-knacks\\",true or false\\nfaro_m_3,family-room,\\"Recessed lighting, lights, lamps, lampshades\\",true or false\\nfaro_m_4,family-room,Ceiling fan,true or false\\nfaro_m_5,family-room,Crown molding,true or false\\nfaro_m_6,family-room,Cobwebs,true or false\\nfaro_m_7,family-room,Wet wipe blinds,true or false\\nfaro_m_8,family-room,Wall dusting,true or false\\nfaro_m_9,family-room,Interior of entertainment center,true or false\\nfaro_m_10,family-room,Wet wipe glass wall art & frames,true or false\\nba_m_1,bathroom,\\"Window sills, door trim\\",true or false\\nba_m_2,bathroom,Wet wipe blinds,true or false\\nba_m_3,bathroom,Both sides 6 panel doors,true or false\\nba_m_4,bathroom,Wall dusting,true or false\\nba_m_5,bathroom,Steam floors,true or false\\nba_m_6,bathroom,Wet wipe glass wall art & frames,true or false\\nbe_m_1,bedroom,Vacuum and mop floors,true or false\\nbe_m_2,bedroom,\\"Window sills, door trim\\",true or false\\nbe_m_3,bedroom,Wet wipe blinds,true or false\\nbe_m_4,bedroom,Wall dusting,true or false\\nbe_m_5,bedroom,Interior of entertainment center,true or false\\nbe_m_6,bedroom,Wet wipe glass wall art & frames,true or false\\nbe_m_7,bedroom,Steam floors,true or false\\nki_up_1,kitchen,Deep clean fridge ,true or false\\nki_up_2,kitchen,Above kitchen cabinets,true or false\\nki_up_3,kitchen,\\"Wet wipe shelves, trinkets, knick-knacks\\",true or false\\nki_up_4,kitchen,\\"Recessed lighting, lights, lamps, lampshades\\",true or false\\nki_up_5,kitchen,Ceiling fan,true or false\\n\\n\\nAfter selecting suitable raw, you must return ONLY a JSON of this selected raw like this:\\n\\n{\\"id\\":\\"ki_d_1\\",\\"room\\":\\"kitchen\\",\\"to-do\\":\\"Sweep counterlop,\\"is-done\\":\\"true\\"}\\n\\nNote 1: You must select either \\"true\\" or \\"false\\" for \\"is-done\\" property. To decide whether you select \\"true\\" or \\"false\\" you must consider the sentiment of the sentence. If the meaning of the sentence is positive, select \\"true\\". If meaning of the sentence is negative, select \\"false\\".\\n\\nNote 2: You must select suitable \\"room\\" either kitchen, family-room, office-and-study, dining-room, bathroom, or bedroom. Decide the \\"room\\" from sentiment of the sentence. If you cannot be sure about the type of room, only say this: {\\"to-do\\":\\"Can you please explain a bit more?\\"}\\n\\nNote 3: Your answer must be only the JSON, nothing more!\\n\\nImportant Note 1: Do not say anything except for JSON answer. Do  not say any note or any information. ONLY JSON!\\n\\nImportant note 2: if you cannot match any item from the given list, just say {\\"to-do\\":\\"Can you please explain a bit more?\\"}"
    },
    {
      "role": "user",
      "content": "now finally i have cleaned the counterlop of kitchen"
    },
    {
      "role": "assistant",
      "content": "{\\"id\\":\\"ki_d_1\\",\\"room\\":\\"kitchen\\",\\"to-do\\":\\"Sweep counterlop,\\"is-done\\":\\"true\\"}"
    },
    {
      "role": "user",
      "content": "oh, i hardly empty trash of kitchen"
    },
    {
      "role": "assistant",
      "content": "{\\"id\\":\\"ki_d_7\\",\\"room\\":\\"kitchen\\",\\"to-do\\":\\"Empty trash\\",\\"is-done\\":\\"true\\"}"
    },
    {
      "role": "user",
      "content": "finally i wiped baseboards wetly in dining room"
    },
    {
      "role": "assistant",
      "content": "{\\"id\\":\\"diro_w_5\\",\\"room\\":\\"dining-room\\",\\"to-do\\":\\"Wet  wipe baseboards\\",\\"is-done\\":\\"true\\"}"
    },
    {
      "role": "user",
      "content": "i didn't mop floors in bathroom"
    },
    {
      "role": "assistant",
      "content": "{\\"id\\":\\"ba_w_2\\",\\"room\\":\\"bathroom\\",\\"to-do\\":\\"Mop floors\\",\\"is-done\\":\\"false\\"}"
    },
    {
      "role": "user",
      "content": "sheets are dirty"
    },
    {
      "role": "assistant",
      "content": "{\\"id\\":\\"be_w_1\\",\\"room\\":\\"bedroom\\",\\"to-do\\":\\"Change sheets\\",\\"is-done\\":\\"false\\"}"
    },
    {
      "role": "user",
      "content": "i cannot Steam floors today in family room"
    },
    {
      "role": "assistant",
      "content": "{\\"id\\":\\"faro_m_1\\",\\"room\\":\\"family-room\\",\\"to-do\\":\\"Steam floors\\",\\"is-done\\":\\"false\\"}"
    },
    {
      "role": "user",
      "content": "${messages}"
    }
  ],
  "temperature": 0.1,
  "top_p": 0.95,
  "frequency_penalty": 0,
  "presence_penalty": 0,
  "max_tokens": 303,
  "stop": null
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'BonjuurGPT',
      apiUrl:
          'https://bonjuurgpt.openai.azure.com/openai/deployments/BonjuurGPT_35/chat/completions?api-version=2023-03-15-preview',
      callType: ApiCallType.POST,
      headers: {
        'api-key': '7e13ee8f500e45d7bf2b6439b11e6382',
        'Content-Type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic messageContent(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].message.content''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
