//
//  Country.swift
//  WhatsAppMe
//
//  Created by Anmol Jain on 15/08/21.
//

import Foundation

struct Country: Identifiable {
	let id: UUID = UUID()
	let code: String
	let flag: String
	let alpha2: String
	let name: String
}

extension Country: Decodable {
	enum CodingKeys: String, CodingKey {
		case code
		case flag
		case alpha2
		case name
	}
}
