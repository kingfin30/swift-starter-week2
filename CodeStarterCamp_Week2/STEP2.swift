//
//  STEP2.swift
//  CodeStarterCamp_Week2
//
//  Created by Minseong Kang on 2023/03/16.
//
import Foundation

func makeLottoNumbers() -> [Int] {
	var randomNumbers: Set<Int> = []
	
	while randomNumbers.count != 6 {
		let randomNumber = Int.random(in: 1...45)
		randomNumbers.insert(randomNumber)
	}
	
	let lottoNumbers = Array(randomNumbers)
	
	return lottoNumbers
}

func matchLottoNumbers(myLottoNumbers: [Int]) {
	var matchedLottoNumbers: [Int] = []
	let winnerLottoNumbers = makeLottoNumbers()
	
	for number in winnerLottoNumbers {
		if myLottoNumbers.contains(number) == true {
			matchedLottoNumbers.append(number)
		}
	}
	
	let winnerNumbers = matchedLottoNumbers.map { String($0) }.joined(separator: ", ")
	
	if matchedLottoNumbers.count >= 1 {
		print("축하합니다! 겹치는 번호는 \(winnerNumbers) 입니다.")
	} else {
		print("아쉽지만 겹치는 번호가 없습니다.")
	}
}
