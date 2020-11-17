Class community.production Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="community.production" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="File Passthrough Service" Category="" ClassName="EnsLib.File.PassthroughService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="ArchivePath">/voldata/archive/</Setting>
    <Setting Target="Adapter" Name="ConfirmComplete">2</Setting>
    <Setting Target="Adapter" Name="FilePath">/voldata/incoming/</Setting>
    <Setting Target="Adapter" Name="FileSpec">*.csv</Setting>
    <Setting Target="Host" Name="TargetConfigNames">Process</Setting>
  </Item>
  <Item Name="Process" Category="" ClassName="community.process" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
</Production>
}

}
