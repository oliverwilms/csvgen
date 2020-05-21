Class UnitTests.Testcsv Extends %UnitTest.TestCase
{

Method TestGenerate()
{
	Set tExpected=272
	set fn="/irisdev/app/data/covid-03-16-2020.csv"
	set status=##class(evshvarov.csvgen).Generate(fn,",",,1,.tResults)
	do $$$AssertStatusOK(status,"Generate")
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestGenerateFromURL()
{
	Set tExpected=3307
	set url="https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_daily_reports/05-17-2020.csv"
	set status=##class(evshvarov.csvgen).GenerateFromURL(url,",",,1,.tResults)
	do $$$AssertStatusOK(status,"GenerateFromURL")
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

}