#!/usr/bin/python

#
# i wrote this code in bits and pieces as i worked on a problem.
# it wasn't intended to be read by anyone else
#
# it's not good code. it's just marginally better than no code.
#
# untangle it at your own risk
#

import re
import random

def countDigraphs(rawLine):
	alphabet = list("abcdefghijklmnopqrstuvwxyz")
	numDigraphs = 2
	line = rawLine.lower()
	report = dict()
	if len(line) == 0:
		return [report, numDigraphs]
#	if line[0] in alphabet:
#		report["^"+line[0]] = 1
#		numDigraphs += 1
	if len(line) == 1:
		return [report, numDigraphs + 1]
#	if line[-1] in alphabet:
#		report[line[0]+"$"] = 1
#		numDigraphs += 1
	for i in range(len(line)-1):
		pair = line[i:i+2]

#		if pair[0] in alphabet and pair[1] not in alphabet:
		# 	rkey = pair[0]+"."
		# 	if not report.has_key(rkey):
		# 		report[rkey] = 0
		# 	report[rkey] += 0 #1
		if pair[0] in alphabet and pair[1] in alphabet:
			rkey = pair[0]+pair[1]
			if not report.has_key(rkey):
				report[rkey] = 0
			report[rkey] += 1
			numDigraphs += 1
#		elif pair[0] not in alphabet and pair[1] in alphabet:
		# 	rkey = "."+pair[1]
		# 	if not report.has_key(rkey):
		# 		report[rkey] = 0
		# 	report[rkey] += 0 #1
	return [report, numDigraphs]

def normalize(l):
	total = sum(l)
	if total!=0:
		return [i/float(total) for i in l]
	return l	


def inhaleCorpus(text):
	lines = text.split("\n")
	report = dict()
	totalNumDigraphs = 0
	for line in lines:
		[lineReport, numDigraphs] = countDigraphs(line)
		# print "Report for line: ", line
		# print lineReport
		# print "Scoring:"
		totalNumDigraphs += numDigraphs
		for k in lineReport.keys():
			if not report.has_key(k):
				report[k] = 0
			report[k] += lineReport[k]
	total = sum([x for x in report.values()])
	for k in report.keys():
		report[k] = float(report[k]) / float(total)
#	for k in report.keys():
#		if report[k]<=0.001:
#			print "Keeping", k
#			report[k] = 0
#		else:
#			report[k] = 0
	total = sum([x**4.0 for x in report.values()])
	for k in report.keys():
		report[k] = float(report[k])**4.0 / float(total)
	return [report, totalNumDigraphs]



def coverageFromDict(refReport, dataBundle):
	[testReport, numTestDigraphs] = dataBundle
	coverage = 0
#	print "tt", refReport["tt"]
	for k in refReport.keys():
		if refReport[k]<=0:
			continue
		if testReport.has_key(k):
			if testReport[k]>=0:
				coverage += refReport[k]
				# if refReport[k]>=0.01:
				# 	print k+" exists, for "+str(refReport[k])+" points"
			# else:
				# if refReport[k]>=0.01:
				# 	print k+" missing, for "+str(refReport[k])+" points"
		# else:
		# 	if refReport[k]>=0.01:
		# 		print k+" missing, for "+str(refReport[k])+" points"
	if len([i for i in testReport.values() if i>0]) == 0:
		return [0, 0, 0]
	minNecessary = min([i for i in testReport.values() if i>0])
#	print testReport
#	excess = sum([((float(i) / minNecessary) - 1.0) for i in testReport.values()])
	excess = numTestDigraphs - len(testReport.keys())
	return [coverage, excess, 0]

def parseGutenberg(raw):
	return re.split(r"[.?!] +", re.sub(r" *\n *", " ", raw))

def coverageReport(refText, testText):
	ref = inhaleCorpus(refText)[0]
	[test, numDigraphs] = inhaleCorpus(testText)
	return coverageFromDict(ref, inhaleCorpus(testText))

def product(liz):
	return reduce(lambda x, y: x * y, liz, 1)

def calcScore(dataBundle):
	[coverage, excess, huh] = dataBundle
	return 15/(1.05-coverage)**2.0 - 1.5**(abs(excess)/10)

def calcScore2(curCoverage, curExcess, dataBundle):
	[coverage, excess, huh] = dataBundle
	return ((coverage) - (curCoverage)) / (1.1**(excess - curExcess))

def realScore(dataBundle, threshold):
	[coverage, excess, huh] = dataBundle
	if coverage<(1-1.0/float(threshold)):
		return coverage / (1-1.0/float(threshold))
	else:		
		return 1+1/(1+abs(excess))

def getWordList(filename):
	inf = open(filename, "r")
	return [x for x in [i.strip() for i in inf.readlines()] if x == x.lower() and "\'" not in x]

def quickSearch(refText, wordList, threshold):
	ref = inhaleCorpus(refText)[0]
	numKeys = len(ref.keys())
	joinChar = " "
	curWords = ["#" for i in range(10)]	
	[curCoverage, curExcess, curHuh] = coverageFromDict(ref, inhaleCorpus("".join(curWords)))
	curExcess+=2*len(curWords)
	curScore = 0
	print "Starting search ...", curWords
	while curCoverage < 1:
		newCand = list(curWords)
		for z in range((random.choice(range(20))+1)):
			permuteAction = random.choice(["change", "remove", "add"])
			# permuteAction = "change"
			if permuteAction in ["change", "remove"]:
				if len(newCand) <= 1:
					permuteAction = "change"
				if len(newCand) > 0:
#					newCand.sort(key = lambda x: realScore(coverageFromDict(ref, inhaleCorpus(list(newCand).remove))), threshold))
					newCand.pop(random.randint(0, len(newCand)-1))
			if permuteAction in ["add", "change"]:
				orderedWords = list(wordList)
				random.shuffle(orderedWords)
				orderedWords = orderedWords[:random.choice([1000])]
				if len(orderedWords) > 1:
					orderedWords.sort(key = lambda x: realScore(coverageFromDict(ref, inhaleCorpus(x+joinChar+joinChar.join(newCand))), threshold))
				newWord = orderedWords[-1]
				newCand.append(newWord)
		[newCoverage, newExcess, newHuh] = coverageFromDict(ref, inhaleCorpus(joinChar.join(newCand)))
		newExcess += (4*len(joinChar))*len(newCand)
		newScore = realScore([newCoverage, newExcess, newHuh], threshold)
		if newScore > curScore:
#		if (newCoverage > curCoverage and (1-curCoverage) >= (1.0/threshold)) or ((abs(1-newCoverage)<(1.0/threshold)) and newExcess < curExcess):
			[curCoverage, curExcess, curHuh] = [newCoverage, newExcess, newHuh]
			curWords = newCand
			curScore = newScore
			print "New best:", curScore, [newCoverage, newExcess], joinChar.join(curWords)
	return curWords

def bestPangra(refText, sampleLines, goodLines):
	ref = inhaleCorpus(refText)[0]
	numKeys = len(ref.keys())
	lineCandidates = []
	if len(goodLines) > 0:
		while(len(sampleLines)>0):
			nextLine = sampleLines.pop(0)
			candLine = nextLine.strip()
#			advanceSearching = 0
#			random.shuffle(goodLines)
			newLines = list(goodLines)
			[curScore, curExcess, curHuh] = coverageFromDict(ref, inhaleCorpus(candLine))
			# while(len(candLine) < float(numKeys)) and (len(newLines)>0):
			while(curScore < 1 and len(candLine) < 5*float(numKeys) and len(newLines)>0):
				# print "x:", x
				print "candLine: ", candLine
				newLines.sort(key = lambda x: 
					1 / (1 + calcScore2(curScore, curExcess, 
						coverageFromDict(ref, inhaleCorpus(x+candLine))) ))
				print "Appending", newLines[0]
				print "Bringing curScore/excess from:", [curScore, curExcess, curHuh]
				candLine += (" "+newLines.pop(0).strip())
				[curScore, curExcess, curHuh] = coverageFromDict(ref, inhaleCorpus(candLine))
				print "to:", [curScore, curExcess, curHuh]
#				curScore = coverageFromDict(ref, inhaleCorpus(candLine))[0]
#				advanceSearching += 1
			if len(candLine) > 0:
				lineCandidates.append(candLine)
	else:
		for line in sampleLines:
			lineCandidates.append(line.strip())
	cand = []
	for line in lineCandidates:
		if len(line) == 0:
			continue
		test = inhaleCorpus(line)
		[coverage, excess] = coverageFromDict(ref, test)[0:2]
#		print [coverage, excess], line
		score = calcScore([coverage, excess, 0])
		cand.append([[coverage, excess], score, line])
	cand.sort(key = lambda x: x[1])
	return cand






