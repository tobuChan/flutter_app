///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class C19DataNewslistDescGlobalStatistics {
/*
{
  "currentConfirmedCount": 29986045,
  "confirmedCount": 98812008,
  "curedCount": 66702098,
  "deadCount": 2123865,
  "currentConfirmedIncr": 227445,
  "confirmedIncr": 549722,
  "curedIncr": 309049,
  "deadIncr": 13228,
  "yesterdayConfirmedCountIncr": 549636
} 
*/

  int currentConfirmedCount;
  int confirmedCount;
  int curedCount;
  int deadCount;
  int currentConfirmedIncr;
  int confirmedIncr;
  int curedIncr;
  int deadIncr;
  int yesterdayConfirmedCountIncr;

  C19DataNewslistDescGlobalStatistics({
    this.currentConfirmedCount,
    this.confirmedCount,
    this.curedCount,
    this.deadCount,
    this.currentConfirmedIncr,
    this.confirmedIncr,
    this.curedIncr,
    this.deadIncr,
    this.yesterdayConfirmedCountIncr,
  });
  C19DataNewslistDescGlobalStatistics.fromJson(Map<String, dynamic> json) {
    currentConfirmedCount = json["currentConfirmedCount"]?.toInt();
    confirmedCount = json["confirmedCount"]?.toInt();
    curedCount = json["curedCount"]?.toInt();
    deadCount = json["deadCount"]?.toInt();
    currentConfirmedIncr = json["currentConfirmedIncr"]?.toInt();
    confirmedIncr = json["confirmedIncr"]?.toInt();
    curedIncr = json["curedIncr"]?.toInt();
    deadIncr = json["deadIncr"]?.toInt();
    yesterdayConfirmedCountIncr = json["yesterdayConfirmedCountIncr"]?.toInt();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["currentConfirmedCount"] = currentConfirmedCount;
    data["confirmedCount"] = confirmedCount;
    data["curedCount"] = curedCount;
    data["deadCount"] = deadCount;
    data["currentConfirmedIncr"] = currentConfirmedIncr;
    data["confirmedIncr"] = confirmedIncr;
    data["curedIncr"] = curedIncr;
    data["deadIncr"] = deadIncr;
    data["yesterdayConfirmedCountIncr"] = yesterdayConfirmedCountIncr;
    return data;
  }
}

class C19DataNewslistDescForeignStatistics {
/*
{
  "currentConfirmedCount": 29983275,
  "confirmedCount": 98711991,
  "suspectedCount": 4,
  "curedCount": 66609662,
  "deadCount": 2119054,
  "suspectedIncr": 0,
  "currentConfirmedIncr": 227335,
  "confirmedIncr": 549472,
  "curedIncr": 308910,
  "deadIncr": 13227
} 
*/

  int currentConfirmedCount;
  int confirmedCount;
  int suspectedCount;
  int curedCount;
  int deadCount;
  int suspectedIncr;
  int currentConfirmedIncr;
  int confirmedIncr;
  int curedIncr;
  int deadIncr;

  C19DataNewslistDescForeignStatistics({
    this.currentConfirmedCount,
    this.confirmedCount,
    this.suspectedCount,
    this.curedCount,
    this.deadCount,
    this.suspectedIncr,
    this.currentConfirmedIncr,
    this.confirmedIncr,
    this.curedIncr,
    this.deadIncr,
  });
  C19DataNewslistDescForeignStatistics.fromJson(Map<String, dynamic> json) {
    currentConfirmedCount = json["currentConfirmedCount"]?.toInt();
    confirmedCount = json["confirmedCount"]?.toInt();
    suspectedCount = json["suspectedCount"]?.toInt();
    curedCount = json["curedCount"]?.toInt();
    deadCount = json["deadCount"]?.toInt();
    suspectedIncr = json["suspectedIncr"]?.toInt();
    currentConfirmedIncr = json["currentConfirmedIncr"]?.toInt();
    confirmedIncr = json["confirmedIncr"]?.toInt();
    curedIncr = json["curedIncr"]?.toInt();
    deadIncr = json["deadIncr"]?.toInt();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["currentConfirmedCount"] = currentConfirmedCount;
    data["confirmedCount"] = confirmedCount;
    data["suspectedCount"] = suspectedCount;
    data["curedCount"] = curedCount;
    data["deadCount"] = deadCount;
    data["suspectedIncr"] = suspectedIncr;
    data["currentConfirmedIncr"] = currentConfirmedIncr;
    data["confirmedIncr"] = confirmedIncr;
    data["curedIncr"] = curedIncr;
    data["deadIncr"] = deadIncr;
    return data;
  }
}

class C19DataNewslistDesc {
/*
{
  "id": 1,
  "createTime": 1579537899000,
  "modifyTime": 1611487323000,
  "summary": "",
  "deleted": false,
  "countRemark": "",
  "currentConfirmedCount": 2770,
  "confirmedCount": 100017,
  "suspectedCount": 4604,
  "curedCount": 92436,
  "deadCount": 4811,
  "seriousCount": 1017,
  "suspectedIncr": 15,
  "currentConfirmedIncr": 110,
  "confirmedIncr": 250,
  "curedIncr": 139,
  "deadIncr": 1,
  "seriousIncr": 56,
  "yesterdayConfirmedCountIncr": 164,
  "yesterdaySuspectedCountIncr": 15,
  "remark1": "易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病",
  "remark2": "潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内可能存在传染性，其中无症状病例传染性非常罕见",
  "remark3": "宿主：野生动物，可能为中华菊头蝠",
  "remark4": "",
  "remark5": "",
  "note1": "病毒：SARS-CoV-2，其导致疾病命名 COVID-19",
  "note2": "传染源：新冠肺炎的患者。无症状感染者也可能成为传染源。",
  "note3": "传播途径：经呼吸道飞沫、接触传播是主要的传播途径。气溶胶传播和消化道等传播途径尚待明确。",
  "generalRemark": "",
  "abroadRemark": "",
  "foreignStatistics": {
    "currentConfirmedCount": 29983275,
    "confirmedCount": 98711991,
    "suspectedCount": 4,
    "curedCount": 66609662,
    "deadCount": 2119054,
    "suspectedIncr": 0,
    "currentConfirmedIncr": 227335,
    "confirmedIncr": 549472,
    "curedIncr": 308910,
    "deadIncr": 13227
  },
  "globalStatistics": {
    "currentConfirmedCount": 29986045,
    "confirmedCount": 98812008,
    "curedCount": 66702098,
    "deadCount": 2123865,
    "currentConfirmedIncr": 227445,
    "confirmedIncr": 549722,
    "curedIncr": 309049,
    "deadIncr": 13228,
    "yesterdayConfirmedCountIncr": 549636
  }
} 
*/

  int id;
  int createTime;
  int modifyTime;
  String summary;
  bool deleted;
  String countRemark;
  int currentConfirmedCount;
  int confirmedCount;
  int suspectedCount;
  int curedCount;
  int deadCount;
  int seriousCount;
  int suspectedIncr;
  int currentConfirmedIncr;
  int confirmedIncr;
  int curedIncr;
  int deadIncr;
  int seriousIncr;
  int yesterdayConfirmedCountIncr;
  int yesterdaySuspectedCountIncr;
  String remark1;
  String remark2;
  String remark3;
  String remark4;
  String remark5;
  String note1;
  String note2;
  String note3;
  String generalRemark;
  String abroadRemark;
  C19DataNewslistDescForeignStatistics foreignStatistics;
  C19DataNewslistDescGlobalStatistics globalStatistics;

  C19DataNewslistDesc({
    this.id,
    this.createTime,
    this.modifyTime,
    this.summary,
    this.deleted,
    this.countRemark,
    this.currentConfirmedCount,
    this.confirmedCount,
    this.suspectedCount,
    this.curedCount,
    this.deadCount,
    this.seriousCount,
    this.suspectedIncr,
    this.currentConfirmedIncr,
    this.confirmedIncr,
    this.curedIncr,
    this.deadIncr,
    this.seriousIncr,
    this.yesterdayConfirmedCountIncr,
    this.yesterdaySuspectedCountIncr,
    this.remark1,
    this.remark2,
    this.remark3,
    this.remark4,
    this.remark5,
    this.note1,
    this.note2,
    this.note3,
    this.generalRemark,
    this.abroadRemark,
    this.foreignStatistics,
    this.globalStatistics,
  });
  C19DataNewslistDesc.fromJson(Map<String, dynamic> json) {
    id = json["id"]?.toInt();
    createTime = json["createTime"]?.toInt();
    modifyTime = json["modifyTime"]?.toInt();
    summary = json["summary"]?.toString();
    deleted = json["deleted"];
    countRemark = json["countRemark"]?.toString();
    currentConfirmedCount = json["currentConfirmedCount"]?.toInt();
    confirmedCount = json["confirmedCount"]?.toInt();
    suspectedCount = json["suspectedCount"]?.toInt();
    curedCount = json["curedCount"]?.toInt();
    deadCount = json["deadCount"]?.toInt();
    seriousCount = json["seriousCount"]?.toInt();
    suspectedIncr = json["suspectedIncr"]?.toInt();
    currentConfirmedIncr = json["currentConfirmedIncr"]?.toInt();
    confirmedIncr = json["confirmedIncr"]?.toInt();
    curedIncr = json["curedIncr"]?.toInt();
    deadIncr = json["deadIncr"]?.toInt();
    seriousIncr = json["seriousIncr"]?.toInt();
    yesterdayConfirmedCountIncr = json["yesterdayConfirmedCountIncr"]?.toInt();
    yesterdaySuspectedCountIncr = json["yesterdaySuspectedCountIncr"]?.toInt();
    remark1 = json["remark1"]?.toString();
    remark2 = json["remark2"]?.toString();
    remark3 = json["remark3"]?.toString();
    remark4 = json["remark4"]?.toString();
    remark5 = json["remark5"]?.toString();
    note1 = json["note1"]?.toString();
    note2 = json["note2"]?.toString();
    note3 = json["note3"]?.toString();
    generalRemark = json["generalRemark"]?.toString();
    abroadRemark = json["abroadRemark"]?.toString();
    foreignStatistics = (json["foreignStatistics"] != null)
        ? C19DataNewslistDescForeignStatistics.fromJson(
            json["foreignStatistics"])
        : null;
    globalStatistics = (json["globalStatistics"] != null)
        ? C19DataNewslistDescGlobalStatistics.fromJson(json["globalStatistics"])
        : null;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["id"] = id;
    data["createTime"] = createTime;
    data["modifyTime"] = modifyTime;
    data["summary"] = summary;
    data["deleted"] = deleted;
    data["countRemark"] = countRemark;
    data["currentConfirmedCount"] = currentConfirmedCount;
    data["confirmedCount"] = confirmedCount;
    data["suspectedCount"] = suspectedCount;
    data["curedCount"] = curedCount;
    data["deadCount"] = deadCount;
    data["seriousCount"] = seriousCount;
    data["suspectedIncr"] = suspectedIncr;
    data["currentConfirmedIncr"] = currentConfirmedIncr;
    data["confirmedIncr"] = confirmedIncr;
    data["curedIncr"] = curedIncr;
    data["deadIncr"] = deadIncr;
    data["seriousIncr"] = seriousIncr;
    data["yesterdayConfirmedCountIncr"] = yesterdayConfirmedCountIncr;
    data["yesterdaySuspectedCountIncr"] = yesterdaySuspectedCountIncr;
    data["remark1"] = remark1;
    data["remark2"] = remark2;
    data["remark3"] = remark3;
    data["remark4"] = remark4;
    data["remark5"] = remark5;
    data["note1"] = note1;
    data["note2"] = note2;
    data["note3"] = note3;
    data["generalRemark"] = generalRemark;
    data["abroadRemark"] = abroadRemark;
    if (foreignStatistics != null) {
      data["foreignStatistics"] = foreignStatistics.toJson();
    }
    if (globalStatistics != null) {
      data["globalStatistics"] = globalStatistics.toJson();
    }
    return data;
  }
}

class C19DataNewslistNews {
/*
{
  "id": 119634,
  "pubDate": 1611469735000,
  "pubDateStr": "7小时前",
  "title": "江苏 | 镇江一人核酸阳性，系之前境外输入确诊病例的父亲",
  "summary": "江苏省镇江市润州区人民政府1月24日通报：在对一例境外输入新冠肺炎确诊病例（普通型）刘某的密切接触者集中隔离医学观察中，刘某父亲22日第一次核酸检测呈阴性，24日上午第二次核酸检测呈阳性。根据防控要求，已将该人员转运至定点收治医院，对其进一步临床检查，并对相关人员采取追踪排查、流行病学调查等相关措施。下一步，将在前期对患者规范救治、重点场所封闭管理和消杀、相关人员核酸检测及其密切接触者排查隔离的基",
  "infoSource": "央视新闻app",
  "sourceUrl": "http://app.cctv.com/special/cportal/detail/arti/index.html?id=ArtiEeM72a5MWL9kl1zj4V4C210124&isfromapp=1",
  "provinceId": "",
  "articleId": 36816,
  "category": 1
} 
*/

  int id;
  int pubDate;
  String pubDateStr;
  String title;
  String summary;
  String infoSource;
  String sourceUrl;
  String provinceId;
  int articleId;
  int category;

  C19DataNewslistNews({
    this.id,
    this.pubDate,
    this.pubDateStr,
    this.title,
    this.summary,
    this.infoSource,
    this.sourceUrl,
    this.provinceId,
    this.articleId,
    this.category,
  });
  C19DataNewslistNews.fromJson(Map<String, dynamic> json) {
    id = json["id"]?.toInt();
    pubDate = json["pubDate"]?.toInt();
    pubDateStr = json["pubDateStr"]?.toString();
    title = json["title"]?.toString();
    summary = json["summary"]?.toString();
    infoSource = json["infoSource"]?.toString();
    sourceUrl = json["sourceUrl"]?.toString();
    provinceId = json["provinceId"]?.toString();
    articleId = json["articleId"]?.toInt();
    category = json["category"]?.toInt();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["id"] = id;
    data["pubDate"] = pubDate;
    data["pubDateStr"] = pubDateStr;
    data["title"] = title;
    data["summary"] = summary;
    data["infoSource"] = infoSource;
    data["sourceUrl"] = sourceUrl;
    data["provinceId"] = provinceId;
    data["articleId"] = articleId;
    data["category"] = category;
    return data;
  }
}

class C19DataNewslist {
/*
{
  "news": [
    {
      "id": 119634,
      "pubDate": 1611469735000,
      "pubDateStr": "7小时前",
      "title": "江苏 | 镇江一人核酸阳性，系之前境外输入确诊病例的父亲",
      "summary": "江苏省镇江市润州区人民政府1月24日通报：在对一例境外输入新冠肺炎确诊病例（普通型）刘某的密切接触者集中隔离医学观察中，刘某父亲22日第一次核酸检测呈阴性，24日上午第二次核酸检测呈阳性。根据防控要求，已将该人员转运至定点收治医院，对其进一步临床检查，并对相关人员采取追踪排查、流行病学调查等相关措施。下一步，将在前期对患者规范救治、重点场所封闭管理和消杀、相关人员核酸检测及其密切接触者排查隔离的基",
      "infoSource": "央视新闻app",
      "sourceUrl": "http://app.cctv.com/special/cportal/detail/arti/index.html?id=ArtiEeM72a5MWL9kl1zj4V4C210124&isfromapp=1",
      "provinceId": "",
      "articleId": 36816,
      "category": 1
    }
  ],
  "desc": {
    "id": 1,
    "createTime": 1579537899000,
    "modifyTime": 1611487323000,
    "summary": "",
    "deleted": false,
    "countRemark": "",
    "currentConfirmedCount": 2770,
    "confirmedCount": 100017,
    "suspectedCount": 4604,
    "curedCount": 92436,
    "deadCount": 4811,
    "seriousCount": 1017,
    "suspectedIncr": 15,
    "currentConfirmedIncr": 110,
    "confirmedIncr": 250,
    "curedIncr": 139,
    "deadIncr": 1,
    "seriousIncr": 56,
    "yesterdayConfirmedCountIncr": 164,
    "yesterdaySuspectedCountIncr": 15,
    "remark1": "易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病",
    "remark2": "潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内可能存在传染性，其中无症状病例传染性非常罕见",
    "remark3": "宿主：野生动物，可能为中华菊头蝠",
    "remark4": "",
    "remark5": "",
    "note1": "病毒：SARS-CoV-2，其导致疾病命名 COVID-19",
    "note2": "传染源：新冠肺炎的患者。无症状感染者也可能成为传染源。",
    "note3": "传播途径：经呼吸道飞沫、接触传播是主要的传播途径。气溶胶传播和消化道等传播途径尚待明确。",
    "generalRemark": "",
    "abroadRemark": "",
    "foreignStatistics": {
      "currentConfirmedCount": 29983275,
      "confirmedCount": 98711991,
      "suspectedCount": 4,
      "curedCount": 66609662,
      "deadCount": 2119054,
      "suspectedIncr": 0,
      "currentConfirmedIncr": 227335,
      "confirmedIncr": 549472,
      "curedIncr": 308910,
      "deadIncr": 13227
    },
    "globalStatistics": {
      "currentConfirmedCount": 29986045,
      "confirmedCount": 98812008,
      "curedCount": 66702098,
      "deadCount": 2123865,
      "currentConfirmedIncr": 227445,
      "confirmedIncr": 549722,
      "curedIncr": 309049,
      "deadIncr": 13228,
      "yesterdayConfirmedCountIncr": 549636
    }
  }
} 
*/

  List<C19DataNewslistNews> news;
  C19DataNewslistDesc desc;

  C19DataNewslist({
    this.news,
    this.desc,
  });
  C19DataNewslist.fromJson(Map<String, dynamic> json) {
    if (json["news"] != null) {
      var v = json["news"];
      var arr0 = List<C19DataNewslistNews>();
      v.forEach((v) {
        arr0.add(C19DataNewslistNews.fromJson(v));
      });
      news = arr0;
    }
    desc = (json["desc"] != null)
        ? C19DataNewslistDesc.fromJson(json["desc"])
        : null;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (news != null) {
      var v = news;
      var arr0 = List();
      v.forEach((v) {
        arr0.add(v.toJson());
      });
      data["news"] = arr0;
    }
    if (desc != null) {
      data["desc"] = desc.toJson();
    }
    return data;
  }
}

class C19Data {
/*
{
  "code": 200,
  "msg": "success",
  "newslist": [
    {
      "news": [
        {
          "id": 119634,
          "pubDate": 1611469735000,
          "pubDateStr": "7小时前",
          "title": "江苏 | 镇江一人核酸阳性，系之前境外输入确诊病例的父亲",
          "summary": "江苏省镇江市润州区人民政府1月24日通报：在对一例境外输入新冠肺炎确诊病例（普通型）刘某的密切接触者集中隔离医学观察中，刘某父亲22日第一次核酸检测呈阴性，24日上午第二次核酸检测呈阳性。根据防控要求，已将该人员转运至定点收治医院，对其进一步临床检查，并对相关人员采取追踪排查、流行病学调查等相关措施。下一步，将在前期对患者规范救治、重点场所封闭管理和消杀、相关人员核酸检测及其密切接触者排查隔离的基",
          "infoSource": "央视新闻app",
          "sourceUrl": "http://app.cctv.com/special/cportal/detail/arti/index.html?id=ArtiEeM72a5MWL9kl1zj4V4C210124&isfromapp=1",
          "provinceId": "",
          "articleId": 36816,
          "category": 1
        }
      ],
      "desc": {
        "id": 1,
        "createTime": 1579537899000,
        "modifyTime": 1611487323000,
        "summary": "",
        "deleted": false,
        "countRemark": "",
        "currentConfirmedCount": 2770,
        "confirmedCount": 100017,
        "suspectedCount": 4604,
        "curedCount": 92436,
        "deadCount": 4811,
        "seriousCount": 1017,
        "suspectedIncr": 15,
        "currentConfirmedIncr": 110,
        "confirmedIncr": 250,
        "curedIncr": 139,
        "deadIncr": 1,
        "seriousIncr": 56,
        "yesterdayConfirmedCountIncr": 164,
        "yesterdaySuspectedCountIncr": 15,
        "remark1": "易感人群：人群普遍易感。老年人及有基础疾病者感染后病情较重，儿童及婴幼儿也有发病",
        "remark2": "潜伏期：一般为 3～7 天，最长不超过 14 天，潜伏期内可能存在传染性，其中无症状病例传染性非常罕见",
        "remark3": "宿主：野生动物，可能为中华菊头蝠",
        "remark4": "",
        "remark5": "",
        "note1": "病毒：SARS-CoV-2，其导致疾病命名 COVID-19",
        "note2": "传染源：新冠肺炎的患者。无症状感染者也可能成为传染源。",
        "note3": "传播途径：经呼吸道飞沫、接触传播是主要的传播途径。气溶胶传播和消化道等传播途径尚待明确。",
        "generalRemark": "",
        "abroadRemark": "",
        "foreignStatistics": {
          "currentConfirmedCount": 29983275,
          "confirmedCount": 98711991,
          "suspectedCount": 4,
          "curedCount": 66609662,
          "deadCount": 2119054,
          "suspectedIncr": 0,
          "currentConfirmedIncr": 227335,
          "confirmedIncr": 549472,
          "curedIncr": 308910,
          "deadIncr": 13227
        },
        "globalStatistics": {
          "currentConfirmedCount": 29986045,
          "confirmedCount": 98812008,
          "curedCount": 66702098,
          "deadCount": 2123865,
          "currentConfirmedIncr": 227445,
          "confirmedIncr": 549722,
          "curedIncr": 309049,
          "deadIncr": 13228,
          "yesterdayConfirmedCountIncr": 549636
        }
      }
    }
  ]
} 
*/

  int code;
  String msg;
  List<C19DataNewslist> newslist;

  C19Data({
    this.code,
    this.msg,
    this.newslist,
  });
  C19Data.fromJson(Map<String, dynamic> json) {
    code = json["code"]?.toInt();
    msg = json["msg"]?.toString();
    if (json["newslist"] != null) {
      var v = json["newslist"];
      var arr0 = List<C19DataNewslist>();
      v.forEach((v) {
        arr0.add(C19DataNewslist.fromJson(v));
      });
      newslist = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["code"] = code;
    data["msg"] = msg;
    if (newslist != null) {
      var v = newslist;
      var arr0 = List();
      v.forEach((v) {
        arr0.add(v.toJson());
      });
      data["newslist"] = arr0;
    }
    return data;
  }
}
