//
//  ContentView.swift
//  ExpenseTrackerApp
//
//  Created by Emir Okay on 30.09.2024.
//

import SwiftUI

struct ContentView: View {
	@StateObject var expenses = Expenses()
	@State private var showAddExpeseView: Bool = false
	@State private var type = "All"
	
    var body: some View {
		NavigationStack {
			List {
				Section("Total amount spent") {
					Picker("Filter by type", selection: $type) {
						Text("All").tag("All")
						ForEach(ExpenseItem.types, id: \.self) { type in
							Text(type).tag(type)
						}
					}
					Text("Amout spent: \(expenses.totalAmount(for: type), format: .currency(code: "USD"))")
				}
				
				
				Section("Expenses") {
					ForEach(expenses.items) { item in
						HStack{
							VStack(alignment: .leading){
								Text(item.name)
									.font(.headline)
								Text(item.description)
									.font(.callout)
							}
							Spacer()
							VStack(alignment: .trailing){
								Text(item.type)
								Text(item.amount, format: .currency(code: "USD"))
							}
						}
					}
					.onDelete(perform: removeItems)
				}
			}
			.overlay {
				VStack{
					Spacer()
					Button {
						showAddExpeseView.toggle()
					} label: {
						Circle()
							.foregroundStyle(.blue)
							.frame(maxWidth: 64, maxHeight: 64)
							.overlay {
								Image(systemName: "plus")
									.resizable()
									.padding()
									.foregroundStyle(.white)
									.frame(maxWidth: 64, maxHeight: 64)
							}
					}
				}
			}
			.sheet(isPresented: $showAddExpeseView, content: { AddExpenseView(expenses: expenses) })
			.navigationTitle("Expenses")
		}
    }
	
	func removeItems(at offsets: IndexSet) {
		expenses.items.remove(atOffsets: offsets)
	}
}

#Preview {
    ContentView()
}
