Class UnitTests.Testcsv Extends %UnitTest.TestCase
{

Method TestDotsinCols()
{
	Set tExpected=272
	set fn="/irisdev/app/data/10k_diabetes_small 2.csv"
	kill pclass
    kill prowtype
	set status=##class(community.csvgen).Generate(fn,",",.pclass,.prowtype,1,.tResults)
	do $$$AssertStatusOK(status,"Generate")
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestGenerate()
{
	Set tExpected=272
	set fn="/irisdev/app/data/covid-03-16-2020.csv"
	kill pclass
    kill prowtype
	set status=##class(community.csvgen).Generate(fn,",",.pclass,.prowtype,0,.tResults)
	do $$$AssertStatusOK(status,"Generate")
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestWithRowtype()
{
	Set tExpected=272
	set fn="/irisdev/app/data/covid-03-16-2020.csv"
	kill pclass
	set prowtype="Province/State VARCHAR(250),Country/Region VARCHAR(250),LastUpdate DATE,Confirmed INTEGER,Deaths INTEGER,Recovered INTEGER,Latitude MONEY,Longitude MONEY"
	set status=##class(community.csvgen).Generate(fn,",",.pclass,.prowtype,1,.tResults)
	do $$$AssertStatusOK(status,"Generate")
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestGenerateNoGuess()
{
	Set tExpected=272
	set fn="/irisdev/app/data/covid-03-16-2020.csv"
	kill pclass
    kill prowtype
	set status=##class(community.csvgen).Generate(fn,",",.pclass,.prowtype,0,.tResults)
	do $$$AssertStatusOK(status,"Generate")
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestGenerateFromURL()
{
	Set tExpected=3307
	set url="https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_daily_reports/05-17-2020.csv"
	kill pclass
    kill prowtype
	set status=##class(community.csvgen).GenerateFromURL(url,",",.pclass,.prowtype,1,.tResults)
	do $$$AssertStatusOK(status,"GenerateFromURL")
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

}
