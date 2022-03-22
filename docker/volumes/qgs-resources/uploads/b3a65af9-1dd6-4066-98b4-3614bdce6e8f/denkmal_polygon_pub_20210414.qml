<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.10.7-A Coruña" styleCategories="Symbology">
  <renderer-v2 symbollevels="0" enableorderby="0" type="RuleRenderer" forceraster="0">
    <rules key="{9b9f3988-e843-428b-bea9-00f2e607ea88}">
      <rule filter="&quot;schutzstufe_code&quot; = 'geschuetzt' &#xa;AND  &quot;objektart_code&quot; != 'garten_park' &#xa;AND  &quot;objektart_code&quot; != 'gestaltete_landschaft'&#xa;AND  &quot;objektart_code&quot; != 'friedhofanlage'&#xa;AND  &quot;objektart_code&quot; != 'Freihaltezone'" symbol="0" key="{c1049989-eec8-4b3c-9cc6-726adeb2f35a}" label="geschützt"/>
      <rule filter="&quot;schutzstufe_code&quot; = 'geschuetzt' AND  &#xa;(&quot;objektart_code&quot; = 'garten_park' &#xa;OR  &quot;objektart_code&quot; = 'gestaltete_landschaft'&#xa;OR  &quot;objektart_code&quot; = 'friedhofanlage'&#xa;OR  &quot;objektart_code&quot; = 'Freihaltezone')" symbol="1" key="{6a591966-7976-4769-8b1a-da0441e7d1bd}" label="geschützt (Gebiet)"/>
    </rules>
    <symbols>
      <symbol clip_to_extent="1" type="fill" alpha="1" force_rhr="0" name="0">
        <layer class="SimpleFill" pass="1" enabled="1" locked="0">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="222,0,3,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" type="fill" alpha="1" force_rhr="0" name="1">
        <layer class="SimpleFill" pass="1" enabled="1" locked="0">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="222,0,3,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="b_diagonal"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerGeometryType>2</layerGeometryType>
</qgis>
