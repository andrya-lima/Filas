<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="AzureCloudServiceProject" generation="1" functional="0" release="0" Id="15f8c2e2-5d67-48e7-a060-be700c5bc3ff" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="AzureCloudServiceProjectGroup" generation="1" functional="0" release="0">
      <settings>
        <aCS name="Consumidor:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/AzureCloudServiceProject/AzureCloudServiceProjectGroup/MapConsumidor:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="ConsumidorInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/AzureCloudServiceProject/AzureCloudServiceProjectGroup/MapConsumidorInstances" />
          </maps>
        </aCS>
        <aCS name="Orquestrador:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/AzureCloudServiceProject/AzureCloudServiceProjectGroup/MapOrquestrador:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="OrquestradorInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/AzureCloudServiceProject/AzureCloudServiceProjectGroup/MapOrquestradorInstances" />
          </maps>
        </aCS>
      </settings>
      <maps>
        <map name="MapConsumidor:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/AzureCloudServiceProject/AzureCloudServiceProjectGroup/Consumidor/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapConsumidorInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/AzureCloudServiceProject/AzureCloudServiceProjectGroup/ConsumidorInstances" />
          </setting>
        </map>
        <map name="MapOrquestrador:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/AzureCloudServiceProject/AzureCloudServiceProjectGroup/Orquestrador/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapOrquestradorInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/AzureCloudServiceProject/AzureCloudServiceProjectGroup/OrquestradorInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="Consumidor" generation="1" functional="0" release="0" software="c:\users\phdias\documents\visual studio 2017\Projects\AzureCloudServiceProject\AzureCloudServiceProject\csx\Debug\roles\Consumidor" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaWorkerHost.exe " memIndex="-1" hostingEnvironment="consoleroleadmin" hostingEnvironmentVersion="2">
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;Consumidor&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;Consumidor&quot; /&gt;&lt;r name=&quot;Orquestrador&quot; /&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/AzureCloudServiceProject/AzureCloudServiceProjectGroup/ConsumidorInstances" />
            <sCSPolicyUpdateDomainMoniker name="/AzureCloudServiceProject/AzureCloudServiceProjectGroup/ConsumidorUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/AzureCloudServiceProject/AzureCloudServiceProjectGroup/ConsumidorFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
        <groupHascomponents>
          <role name="Orquestrador" generation="1" functional="0" release="0" software="c:\users\phdias\documents\visual studio 2017\Projects\AzureCloudServiceProject\AzureCloudServiceProject\csx\Debug\roles\Orquestrador" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaWorkerHost.exe " memIndex="-1" hostingEnvironment="consoleroleadmin" hostingEnvironmentVersion="2">
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;Orquestrador&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;Consumidor&quot; /&gt;&lt;r name=&quot;Orquestrador&quot; /&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/AzureCloudServiceProject/AzureCloudServiceProjectGroup/OrquestradorInstances" />
            <sCSPolicyUpdateDomainMoniker name="/AzureCloudServiceProject/AzureCloudServiceProjectGroup/OrquestradorUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/AzureCloudServiceProject/AzureCloudServiceProjectGroup/OrquestradorFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="ConsumidorUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyUpdateDomain name="OrquestradorUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="ConsumidorFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyFaultDomain name="OrquestradorFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="ConsumidorInstances" defaultPolicy="[1,1,1]" />
        <sCSPolicyID name="OrquestradorInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
</serviceModel>