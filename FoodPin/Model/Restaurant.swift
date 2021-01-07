//
//  Restaurant.swift
//  FoodPin
//
//  Created by NDHU_CSIE on 2020/11/19.
//  Copyright © 2020 NDHU_CSIE. All rights reserved.
//

import Foundation

class Restaurant: NSObject, Codable {
    var name: String
    var type: String
    var location: String
    var phone: String
    var summary: String
    var image: String
    var isVisited: Bool
    var rating: String
    
    init(name: String, type: String, location: String, phone: String, summary: String, image: String, isVisited: Bool) {
        self.name = name
        self.type = type
        self.location = location
        self.phone = phone
        self.summary = summary
        self.image = image
        self.isVisited = isVisited
        self.rating = ""
    }
    
    convenience override init() {
        self.init(name: "", type: "", location: "", phone: "", summary: "", image: "", isVisited: false)
    }
    
    static func generateData(sourceArray: inout [Restaurant]) {
    sourceArray = [ 
           Restaurant(name: "埼玉超級競技場", type: "籃球", location: "8 Shintoshin, Chuo Ward, Saitama, 330-9111日本", phone: "0932-591-537", summary: "座位採可動式設計，可從37,000席、30,000席、27,000席（體育場模式，スタジアムモード，Stadium Mode）[1]到22,500席、16,000席、12,500席（競技場模式，アリーナモード，Arena Mode）[2]，以及較小的6,000席[3]，因此可供運動競賽、演唱會、電視節目、演講等多用途使用。建築採比賽形式選出優勝作品，最後採用由日建設計的提案。最大容納量37,000席，是日本國內容納量最大的競技場級體育館（アリーナ）；由於其大小介於巨蛋（ドーム）跟競技場之間，因此在日本是非常熱門的演唱會場地。", image: "11.jpg", isVisited: false),
           Restaurant(name: "東京體育館", type: "乒乓球", location: "1 Chome-17-1 Sendagaya, Shibuya City, Tokyo 151-0051日本", phone: "+81 3-6380-4832", summary: "東京體育館（日语：東京体育館／とうきょうたいいくかん Tōkyō Taiikukan */?），位於日本東京都澀谷區，為東京著名的運動場館。它是為了世界角力錦標賽於1964年興建，也成為1964年東京奧運体操比賽的場館，2020年夏季奧林匹克運動會桌球比賽於此舉行[1]。于1990年由建筑师槙文彦主导改造，全部可容納10,000人。", image: "22.jpg", isVisited: false),
           Restaurant(name: "武藏野之森綜合體育廣場", type: "羽毛球", location: "290-11 Nishimachi, Chofu, Tokyo 182-0032日本", phone: "+81 42-488-8607", summary: "武藏野之森綜合體育廣場（日语：武蔵野の森総合スポーツプラザ）是位於日本東京都調布市的室內體育場館。此處將舉辦2020年夏季奧林匹克運動會羽球和現代五項擊劍項目比賽，以及2020年夏季帕拉林匹克運動會輪椅籃球比賽[1][2][3]。主體育場可容納超過10000人，還包括供公眾使用得一座游泳池、一座健身房、一個綜合場地和兩座健身工作室", image: "33.jpg", isVisited: false),
           Restaurant(name: "埼玉2002體育場", type: "足球", location: "日本〒336-0967 Saitama, Midori Ward, Misono, 2-chome−１", phone: "+81 48-812-2002", summary: "由於日本於2002年舉辦世界盃足球賽，因此日本政府在各地新建許多足球場館，埼玉2002體育場就是其中之一。球場於2001年9月完工，可以容納63,700人，後來減少至62,300人。2002年世界盃期間，體育場一共舉行了4場賽事，包括日本與比利時的比賽。", image: "44.jpg", isVisited: false),
           Restaurant(name: "東京奧林匹克水上運動中心", type: "游泳", location: "2 Chome-2-1 Tatsumi, Koto City, Tokyo 135-0053日本", phone: "+81 3-5534-6410", summary: "主泳池的特色是設有一座移動牆，可將長50公尺的泳池轉變成兩座25公尺長的泳池，同時池底深度也可以調整。", image: "55.jpg", isVisited: false),
           Restaurant(name: "幕張展覽館", type: "跆拳道", location: "日本〒261-8550 Chiba, Mihama Ward, Nakase, 2 Chome−１", phone: "+81 43-296-0001", summary: "幕張位於千葉縣東京灣沿岸，是一個鄰近東京都的商業區。原本幕張這片土地是並不存在的，80年代末填海開發後，幕張才由一片海洋變成一片陸地。 這塊填海區很受千葉縣政府的特別重視。 在這裡的建築風格，高高架起的空中長廊，精緻的行人通道及寬敞的路面等，都充分體現出城市規劃的別具匠心。作為高度現代化的商業區，幕張也設置有大型會議中心、展覽館、購物餐飲中心，棒球場以及海濱公園等各種區域設施。", image: "66.jpg", isVisited: false),
           Restaurant(name: "日本武道館", type: "柔道", location: "2-3 Kitanomarukoen, Chiyoda City, Tokyo 102-8321日本", phone: "+81 3-3216-5100", summary: "日本武道館是為1964年舉行的東京奧運會場之一而建設，同年10月3日落成。設計師為山田守，由竹中工務店承包施工，採用八角形的設計，屋頂樣貌則仿自富士山。門口的「武道舘」匾額，出自財團法人日本武道館首任會長正力松太郎之手筆。1964年東京奧運期間，至10月20日共4日間在此舉行柔道比賽。之後主要做為柔道、劍道、空手道等武道活動場地使用，同時成為舞蹈、樂團、演武會等表演，以及演唱會與格闘技（職業拳擊、職業摔跤、K-1、PRIDE）的舉行會場、大學等的大規模入學禮、畢業禮會場等廣泛使用。毎年4月29日舉行的全日本柔道選手權大會（無差別級競賽，日本全國冠軍決定戰）、11月3日全日本劍道選手權、11月下旬的自衛隊音樂節皆在此舉行。日本天皇與首相固定出席的全國戰歿者追悼式也於每年的8月15日（日本二戰投降日）在此地舉行。", image: "77.jpg", isVisited: false)
       ]
    }
       
}

