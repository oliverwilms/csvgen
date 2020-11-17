/// 
Class community.process Extends Ens.BusinessProcessBPL
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='Ens.StreamContainer' response='Ens.Response' height='2000' width='2000' >
<sequence xend='200' yend='350' >
<code name='import file' xpos='200' ypos='250' >
<![CDATA[ do ##class(community.csvgen).Generate(request.OriginalFilename)]]>
</code>
</sequence>
</process>
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
