//
//  AlaxhenryStocksAPIExec.swift
//  
//
//  Created by Seungchul Ha on 2022/10/29.
//

import Foundation
import AlaxhenryStocksAPI

@main
struct AlaxhenryStocksAPIExec {
    static let alaxhenryStocksAPI = AlaxhenryStocksAPI()
    
    static func main() async {
        //        let (data, _) = try! await URLSession.shared.data(from: URL(string: "https://query1.finance.yahoo.com/v7/finance/quote")!)
        //
        //        let quoteResponse = try! JSONDecoder().decode(QuoteResponse.self, from: data)
        //
        //        print(quoteResponse)
        
        //        let (searchData, _) = try! await URLSession.shared.data(from: URL(string: "https://query1.finance.yahoo.com/v1/finance/search?q=Tesla")!)
        //
        //        let searchResponse = try! JSONDecoder().decode(SearchTickersResponse.self, from: searchData)
        //
        //        print(searchResponse)
        
        // https://query1.finance.yahoo.com/v8/finance/chart/AAPL?range=1d&interval=1m&includeTimestamp=true&indicators=quote
        
        //        let (chartData, _) = try! await URLSession.shared.data(from: URL(string: "https://query1.finance.yahoo.com/v8/finance/chart/AAPL?range=1d&interval=1m&includeTimestamp=true&indicators=quote")!)
        //        let chartResponse = try! JSONDecoder().decode(ChartResponse.self, from: chartData)
        //        print(chartResponse)
        
        //        do {
        //            let quotes = try await stocksAPI.fetchQuotes(symbols: "AAPL,MSFT,GOOG,TSLA")
        //            let quotes = try await stocksAPI.fetchQuotes(symbols: "")
        //            print(quotes)
        //        } catch {
        //            print(error.localizedDescription)
        //        }
        
        //        do {
        //            let tickers = try await stocksAPI.searchTickers(query: "tesla")
        //            print(tickers)
        //        } catch {
        //            print(error.localizedDescription)
        //        }
        
        do {
            if let chart = try await alaxhenryStocksAPI.fetchChartData(symbol: "AAPL", range: .oneDay) {
                print(chart)
            }
        } catch {
            print(error.localizedDescription)
        }
        
    }
}
