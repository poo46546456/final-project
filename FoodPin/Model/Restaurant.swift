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
           Restaurant(name: "西螺黃家九層粿", type: "熟食店", location: "雲林縣西螺鎮建興路286號", phone: "0932-591-537", summary: "地方小吃。油蔥粿便宜有又好吃。生意很好人潮很多。因店在路邊上。較不好停車。", image: "1.jpg", isVisited: false),
           Restaurant(name: "西螺三角大水餃", type: "餃子店", location: "雲林縣西螺鎮觀音街12號", phone: "05-586-3955", summary: "非常傳統的老店，假日中午前往用餐，客滿狀態，等了一下才有位子可以就坐，再等了好一下才上菜，雖然沒有冷氣，店面也不大，但我吃的是食物的味道，每一道菜都非常美味，連湯頭都不馬虎，好喝順口，雖然是炎熱的八月天，我還是把湯喝光光。三角大水餃形狀像超大顆的水晶餃，皮像是較薄的肉圓皮的口感，軟Q又帶一點勁道，內陷像是北斗肉圓的餡料，筍塊很多，調味非常恰當好好吃，湯或乾的大水餃都非常好吃😋。小菜每一道都很好吃，是用心的商家，可能客人真的太多，等候久了一點，但沒關係，好吃真的比較重要，不要惡言對待店員，他們很辛苦，而且我覺得他們都會對我們微笑，完全沒有其他評論說的態度不佳。值得推薦的老店。", image: "2.jpg", isVisited: false),
           Restaurant(name: "東城北方麵食館", type: "餐廳", location: "雲林縣西螺鎮延平路283之1號", phone: "05-587-2128", summary: "中南部比較少有的北方飯館。小籠包皮薄湯汁多，抓餅趁熱吃香脆有麵香，豬肉捲餅的大蔥畫龍點睛，豆沙鍋餅稍嫌薄了一點。整體還是算滿好吃的。", image: "3.jpg", isVisited: false),
           Restaurant(name: "阿美小吃", type: "餐廳", location: "雲林縣西螺鎮延平路354之1號", phone: "05-586-3908", summary: "彩色麵很有嚼勁，餛飩有鮮蝦瘦肉很好吃。湯頭是蔬菜的清甜。老闆娘人很清切。滿分。", image: "4.jpg", isVisited: false),
           Restaurant(name: "琴連碗粿城", type: "熟食店", location: "雲林縣西螺鎮延平路75號", phone: "05-586-5436", summary: "青草茶不甜，好喝，黑糖紅豆碗粿頗特別，口感較一般碗粿軟，不錯吃，米糕，個人覺得裡面米粒太硬，有顆粒感，沒爛，醬汁是不錯，真是有一得必有一失", image: "5.jpg", isVisited: false),
           Restaurant(name: "西螺老牌魷魚羹豆菜麵", type: "麵店", location: "雲林縣西螺鎮建興路221號", phone: "05-586-8812", summary: "豆菜麵真的不錯麵條收水份至乾Q口感加上他們獨門的醬汁真的是蠻特別的肉羹味道也是古早味的比較偏厚實沒有肉腥味，也是值得推薦另外米糕我個人就覺得比較一般", image: "6.jpg", isVisited: false),
           Restaurant(name: "西螺蕭家油蔥粿", type: "熟食店", location: "雲林縣西螺鎮建興路272號", phone: "0937-759-788", summary: "一大早就人聲鼎沸的親切小店，不論是在地人或外來客都能投其所好，油蔥粿和綜合湯是最大共識，在地人偏愛物超所值的乾麵，外來客則喜歡米香四溢的米糕。吃完遊逛西螺小鎮，向太平媽祈求平安，這小鎮旅行絕對給你充實的一整天！", image: "7.jpg", isVisited: false),
           Restaurant(name: "西螺詹媽媽土魠魚羹", type: "熟食店", location: "雲林縣西螺鎮建興路229號", phone: "05-587-2942", summary: "本店位於西螺鎮中心，第一銀行斜對面。從開店至今餘28年頭，老闆娘單打獨鬥辛苦二十六年，再由第二代小老闆改革改變，讓本店的好味道持續傳香下去。道地的老味道，老顧客的光臨才有詹媽媽持續傳香的好動力。歡迎舊雨新知繼續給我們鼓勵與建議，讓我們能更加成長更加成功。謝謝大家。", image: "8.jpg", isVisited: false),
           Restaurant(name: "西螺碗粿", type: "餐廳", location: "雲林縣西螺鎮延平路51巷6號", phone: "734-232323", summary: "西螺碗粿：老師介紹的位於西螺老街旁邊，雖然不是碗粿的產地，但是也小有名氣在當地。清淡的碗粿帶有米香味，有別於其他地方的碗粿，沒有華麗的內餡，只有簡單的菜脯，加上有當地古早味醬油的加持，更顯得醇香，應該是我吃過最單純的傳統碗粿了，現在很少店做這樣最單純的口味，真的好吃單純的古早味。自製辣椒有辣，喜歡辣的話這個好口味。", image: "9.jpg", isVisited: false),
           Restaurant(name: "福記碳烤鵝肉", type: "熟食店", location: "雲林縣西螺鎮建興路277號", phone: "05-586-7007", summary: "經過時看到很多人在門口排隊，於是進來吃看看！海鮮麵65元，非常超值，有一隻鮮蝦是鮮蝦噢！5個蛤蜊，雞心，雞胗，魷魚，韭菜花……味道偏重，不過湯頭真的讚！麵體稍軟爛！推薦！鴨肉1／4後半段150元如果很多評論說的鴨肉很乾，很材，的確是如此，這道建議不要點。", image: "10.jpg", isVisited: false),
           Restaurant(name: "阿郎米糕店", type: "餐廳", location: "雲林縣西螺鎮中山路176號", phone: "05-587-0412", summary: "筒仔米糕有蝦米肉燥鹹香,口感稍微偏軟,大腸屬於有傳統內臟腸衣味，吃不慣的人可能會覺得怪怪的,蝦沙拉新鮮好吃,筍子湯湯頭清甜,稍微偏油,整體來說值得一吃", image: "11.jpg", isVisited: false),
           Restaurant(name: "老邵小籠包", type: "熟食店", location: "雲林縣西螺鎮建興路214號", phone: "05-587-3003", summary: "喜歡傳統小吃素食者也有專用餐廳吃素的親友很開心平價、美味此店位在菜市場內附近有一個付費停車場建議直接找好位子 走路過去唷！", image: "12.jpg", isVisited: false),
       ]
    }
       
}

