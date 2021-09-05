/*
  1กค-5533-57
  2กค-6087-61
  3กค-6230-41
  4กค-5916-44
  5กค-6166-50
 */
void main() {
/*  List<String> dateList = ['1กค', '2กค', '3กค', '4กค', '5กค'];
  List<int> caseList = [5533, 6087, 6230, 5916, 6166];
  List<int> deathList = [57, 61, 41, 44, 50];
  for (var i=0 ;i<dateList.length;i++){
    print('วันที่ ${dateList[i]}, ติดเชื้อ ${caseList[i]}, เสียชีวิต ${deathList[i]}');
  }
*/

/*  Map<String, dynamic> reportMap = {
    'date': '1กค',
    'case': 5533,
    'death': 57,
  };
  Map<String, dynamic> reportMap2 = {
    'date': '2กค',
    'case': 6087,
    'death': 61,
  };
 */

  const KEY_DATE = 'date';

  List<Map<String, dynamic>> reportList = [
    /*  List<Map<String, dynamic>> reportList = [
    {KEY_DATE: '1กค', 'case': 5533, 'death': 57},
    {KEY_DATE: '2กค', 'case': 6087, 'death': 61},
    {KEY_DATE: '3กค', 'case': 6230, 'death': 41},
    {KEY_DATE: '4กค', 'case': 5916, 'death': 44},
    {KEY_DATE: '5กค', 'case': 6166, 'death': 50},
  ];*/
    {'date': '1กค', 'case': 5533, 'death': 57},
    {'date': '2กค', 'case': 6087, 'death': 61},
    {'date': '3กค', 'case': 6230, 'death': 41},
    {'date': '4กค', 'case': 5916, 'death': 44},
    {'date': '5กค', 'case': 6166, 'death': 50},
  ];
  for (var i = 0; i < reportList.length; i++) {
    print(
        'วันที่ ${reportList[i][KEY_DATE]}, ติดเชื้อ ${reportList[i]['case']}, เสียชีวิต ${reportList[i]['death']}');
  }
  //or
  /* var f = (Map<String ,dynamic>i){
    print(i);
  };
 reportList.forEach(f);*/
  //or

  List list=[1,2,3,4,5];
  List list2 = list.map((e){
    return
      {
        'data' : e
      };
  }).toList();
  print(list2);
  list2.forEach((element) {
    print(element);
  });
  return;
}