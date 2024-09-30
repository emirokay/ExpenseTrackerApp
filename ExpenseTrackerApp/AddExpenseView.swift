//
//  AddExpenseView.swift
//  ExpenseTrackerApp
//
//  Created by Emir Okay on 30.09.2024.
//

import SwiftUI

struct AddExpenseView: View {
	@ObservedObject var expenses = Expenses()
	@Environment(\.dismiss) var dismiss
	
	@State private var name = ""
	@State private var description = ""
	@State private var type = "Personal"
	@State private var amount = 0.0
	
    var body: some View {
		NavigationStack {
			Form {
				TextField("Name", text: $name)
				TextField("Description (optional)", text: $description)
				Picker("Type", selection: $type) {
					ForEach(ExpenseItem.types, id: \.self) {
						Text($0)
					}
				}
				TextField("Amount", value: $amount, format: .currency(code: "USD"))
					.keyboardType(.decimalPad)
			}
			.navigationTitle("Add new expense")
			.navigationBarTitleDisplayMode(.inline)
			.toolbar {
				Button("Save"){
					if(name != "") {
						let item = ExpenseItem(name: name, description: description, type: type, amount: amount)
						expenses.items.append(item)
					}
					dismiss()
				}
			}
		}
    }
}

#Preview {
    AddExpenseView()
}
