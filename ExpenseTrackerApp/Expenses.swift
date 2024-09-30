//
//  Expenses.swift
//  ExpenseTrackerApp
//
//  Created by Emir Okay on 30.09.2024.
//
import Foundation

struct ExpenseItem: Identifiable, Codable {
	var id = UUID()
	let name: String
	let description: String
	let type: String
	let amount: Double
	
	static let types = ["Personal", "Housing", "Transportation", "Food & Groceries", "Health & Fitness", "Entertainment", "I wanted"]
}

class Expenses: ObservableObject {
	@Published var items = [ExpenseItem]() {
		didSet{
			if let encoded = try? JSONEncoder().encode(items) {
				UserDefaults.standard.set(encoded, forKey: "Items")
			}
		}
	}
	
	init(){
		if let savedItems = UserDefaults.standard.data(forKey: "Items") {
			if let decodedItems = try? JSONDecoder().decode([ExpenseItem].self, from: savedItems) {
				items = decodedItems
				return
			}
		}
		items = []
	}
	
	var totalAmount: Double {
		items.reduce(0) { $0 + $1.amount }
	}
	
	func totalAmount(for type: String) -> Double {
		if type == "All" {
			return totalAmount
		}
		return items.filter { $0.type == type }
			 .reduce(0) { $0 + $1.amount }
		
	}
	
}
