//
//  TaskController.swift
//  SampleAsyncAwait
//
//  Created by 平野裕貴 on 2023/08/06.
//

import Foundation

class TasksController: ObservableObject {
    @Published var syncResult1 = "" // 同期処理結果
    @Published var syncResult2 = "" // 同期処理結果
    @Published var asyncResult = "" // 非同期処理結果
    @Published var parallelResult1 = "" // 並列処理結果
    @Published var parallelResult2 = "" // 並列処理結果

    // 同期的にデータをロード
    func loadSyncData() {
        syncResult1 = TasksModel.syncTask1() // 同期task1を実行し結果を取得
        syncResult2 = TasksModel.syncTask2() // 同期task2を実行し結果を取得
    }

    // 非同期的にデータをロード
    func loadAsyncData() {
        Task {
            asyncResult = await TasksModel.asyncTask1() // 非同期task1を実行し結果を取得
            asyncResult += await TasksModel.asyncTask2() // 非同期task2を実行し結果を取得
        }
    }

    // 並列にデータをロード
    func loadParallelData() {
        Task {
            async let output1 = TasksModel.asyncTask1() // 非同期task1を実行
            async let output2 = TasksModel.asyncTask2() // 非同期task2を実行
            parallelResult1 = await output1 // task1の結果を取得
            parallelResult2 = await output2 // task2の結果を取得
        }
    }
}
