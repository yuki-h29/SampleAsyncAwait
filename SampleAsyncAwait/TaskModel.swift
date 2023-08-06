//
//  TaskModel.swift
//  SampleAsyncAwait
//
//  Created by 平野裕貴 on 2023/08/06.
//

import Foundation

struct TasksModel {
    static func syncTask1() -> String {
        print("Task 1開始")
        sleep(2) // 2秒待つ
        return "Task 1完了"
    }

    static func syncTask2() -> String {
        print("Task 2開始")
        sleep(2) // 2秒待つ
        return "Task 2完了"
    }

    static func asyncTask1() async -> String {
        print("Task 1開始")
        sleep(2) // 2秒待つ
        return "Task 1完了"
    }

    static func asyncTask2() async -> String {
        print("Task 2開始")
        sleep(2) // 2秒待つ
        return "Task 2完了"
    }
}
