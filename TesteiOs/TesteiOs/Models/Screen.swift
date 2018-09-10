//
//  Screen.swift
//  TesteiOs
//
//  Created by Natalia Favero on 10/09/18.
//  Copyright © 2018 Natalia Favero. All rights reserved.
//

import Foundation

struct Screen: Equatable {
    var title: String
    var fundName: String
    var whatIs: String
    var definition: String
    var riskTitle: String
    var risk: Int
    var infoTitle: String
    var moreInfo: MoreInfo
    var info: [Info]
    var downInfo: [Info]
}

func ==(lhs: Screen, rhs: Screen) -> Bool
{
    return lhs.title == rhs.title
        && lhs.fundName == rhs.fundName
        && lhs.whatIs == rhs.whatIs
        && lhs.definition == rhs.definition
        && lhs.riskTitle == rhs.riskTitle
        && lhs.risk == rhs.risk
        && lhs.infoTitle == rhs.infoTitle
        && lhs.moreInfo == rhs.moreInfo
        && lhs.info == rhs.info
        && lhs.downInfo == rhs.downInfo
}

struct MoreInfo: Equatable {
    var month: MoreInfoDetail
    var year: MoreInfoDetail
    var twelveMonths: MoreInfoDetail
}

func ==(lhs: MoreInfo, rhs: MoreInfo) -> Bool
{
    return lhs.month == rhs.month
        && lhs.year == rhs.year
        && lhs.twelveMonths == rhs.twelveMonths
}

struct MoreInfoDetail: Equatable {
    var fund: Float
    var CDI: Float
}

func ==(lhs: MoreInfoDetail, rhs: MoreInfoDetail) -> Bool
{
    return lhs.fund == rhs.fund
        && lhs.CDI == rhs.CDI
}

struct Info: Equatable {
    var name: String
    var data: String
}

func ==(lhs: Info, rhs: Info) -> Bool
{
    return lhs.name == rhs.name
        && lhs.data == rhs.data
}

