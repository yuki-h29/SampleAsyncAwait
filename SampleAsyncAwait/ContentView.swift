//
//  ContentView.swift
//  SampleAsyncAwait
//
//  Created by 平野裕貴 on 2023/08/06.
//

import SwiftUI

struct ContentView: View {
    @StateObject var controller = TasksController() // コントローラーのインスタンスを生成
    
    var body: some View {
        VStack {
            Text("同期処理1: \(controller.syncResult1)") // 同期処理結果を表示

            Text("同期処理2: \(controller.syncResult2)") // 同期処理結果を表示
                .padding(.bottom, 10)
            Button("同期データ読み込みテスト") {
                controller.loadSyncData() // 同期的にデータをロード
            }
            .padding(.bottom, 40)
            Text("非同期: \(controller.asyncResult)") // 非同期処理結果を表示
                .padding(.bottom, 10)
            Button("非同期データ読み込みテスト") {
                controller.loadAsyncData() // 非同期的にデータをロード
            }
            .padding(.bottom, 40)
            Text("並列1: \(controller.parallelResult1)") // 並列処理結果1を表示
            Text("並列2: \(controller.parallelResult2)") // 並列処理結果2を表示
                .padding(.bottom, 10)
            Button("並列データ読み込みテスト") {
                controller.loadParallelData() // 並列にデータをロード
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
