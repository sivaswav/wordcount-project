from django.http import HttpResponse
from django.shortcuts import render

def home(req):
	print(type(req))
	return HttpResponse("Hello !!!"+str((req)))

def homepage(req):
	return render(req,'homepage.html')	

def wordcnt(req):
	texts=req.GET["fname"]
	words=texts.split()
	print(words)
	return render(req,'wordcounts.html',{"counts":len(words)})		