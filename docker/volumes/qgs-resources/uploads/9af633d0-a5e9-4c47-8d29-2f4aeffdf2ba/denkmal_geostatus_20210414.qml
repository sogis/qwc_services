<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.10.7-A Coruña" styleCategories="Symbology">
  <renderer-v2 symbollevels="0" enableorderby="0" type="RuleRenderer" forceraster="0">
    <rules key="{9b9f3988-e843-428b-bea9-00f2e607ea88}">
      <rule filter="&quot;schutzstufe_code&quot; = 'geschuetzt' &#xa;AND  &quot;objektart_code&quot; != 'garten_park' &#xa;AND  &quot;objektart_code&quot; != 'gestaltete_landschaft'&#xa;AND  &quot;objektart_code&quot; != 'friedhofanlage'&#xa;AND  &quot;objektart_code&quot; != 'Freihaltezone'" symbol="0" key="{c1049989-eec8-4b3c-9cc6-726adeb2f35a}" label="geschützt"/>
      <rule filter="&quot;schutzstufe_code&quot; = 'schuetzenswert'&#xa;AND  &quot;objektart_code&quot; != 'garten_park' &#xa;AND  &quot;objektart_code&quot; != 'gestaltete_landschaft'&#xa;AND  &quot;objektart_code&quot; != 'friedhofanlage'&#xa;AND  &quot;objektart_code&quot; != 'Freihaltezone'" symbol="1" key="{32b3e0e3-600d-4676-8580-4b68f0e227d2}" label="schützenswert"/>
      <rule filter="&quot;schutzstufe_code&quot; = 'erhaltenswert'&#xa;AND  &quot;objektart_code&quot; != 'garten_park' &#xa;AND  &quot;objektart_code&quot; != 'gestaltete_landschaft'&#xa;AND  &quot;objektart_code&quot; != 'friedhofanlage'&#xa;AND  &quot;objektart_code&quot; != 'Freihaltezone'" symbol="2" key="{20ac4ac8-9ab3-4350-863b-9f46ef6b84e4}" label="erhaltenswert"/>
      <rule filter="&quot;schutzstufe_code&quot; = 'keine'  &#xa;AND  &quot;objektart_code&quot; != 'garten_park' &#xa;AND  &quot;objektart_code&quot; != 'gestaltete_landschaft'&#xa;AND  &quot;objektart_code&quot; != 'friedhofanlage'&#xa;AND  &quot;objektart_code&quot; != 'Freihaltezone'" symbol="3" key="{cc81251a-40c2-439f-9821-899a7cbe7dfb}" label="keine"/>
      <rule filter="&quot;schutzstufe_code&quot; = 'geschuetzt' AND  &#xa;(&quot;objektart_code&quot; = 'garten_park' &#xa;OR  &quot;objektart_code&quot; = 'gestaltete_landschaft'&#xa;OR  &quot;objektart_code&quot; = 'friedhofanlage'&#xa;OR  &quot;objektart_code&quot; = 'Freihaltezone')" symbol="4" key="{6a591966-7976-4769-8b1a-da0441e7d1bd}" label="geschützt (Gebiet)"/>
      <rule filter="&quot;schutzstufe_code&quot; = 'schuetzenswert' AND  &#xa;(&quot;objektart_code&quot; = 'garten_park' &#xa;OR  &quot;objektart_code&quot; = 'gestaltete_landschaft'&#xa;OR  &quot;objektart_code&quot; = 'friedhofanlage'&#xa;OR  &quot;objektart_code&quot; = 'Freihaltezone')" symbol="5" key="{2424fb57-5527-44a7-9911-9ff04c072afc}" label="schützenswert (Gebiet)"/>
      <rule filter="&quot;schutzstufe_code&quot; = 'erhaltenswert' AND  &#xa;(&quot;objektart_code&quot; = 'garten_park' &#xa;OR  &quot;objektart_code&quot; = 'gestaltete_landschaft'&#xa;OR  &quot;objektart_code&quot; = 'friedhofanlage'&#xa;OR  &quot;objektart_code&quot; = 'Freihaltezone')" symbol="6" key="{43278520-bc2c-43fa-977a-c85c39b42959}" label="erhaltenswert (Gebiet)"/>
      <rule filter="&quot;schutzstufe_code&quot; = 'keine'  AND  &#xa;(&quot;objektart_code&quot; = 'garten_park' &#xa;OR  &quot;objektart_code&quot; = 'gestaltete_landschaft'&#xa;OR  &quot;objektart_code&quot; = 'friedhofanlage'&#xa;OR  &quot;objektart_code&quot; = 'Freihaltezone')" symbol="7" key="{78c32bdb-efb6-4fbd-a008-c347c7c2dca6}" label="keine (Gebiet)"/>
      <rule filter=" &quot;geometrie_quelle&quot; =  'artplus_punkt' " symbol="8" key="{021184e2-f009-418d-8630-3cf99f55219c}" label="ArtPlus-Geometrie"/>
      <rule filter=" &quot;schutzdurchgemeinde&quot; =  't' " symbol="9" key="{ffbaf8e6-289b-40f0-b208-3dbac444b8b2}" label="Kommunaler Schutz"/>
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
        <layer class="SimpleFill" pass="0" enabled="1" locked="0">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="4,0,255,255"/>
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
      <symbol clip_to_extent="1" type="fill" alpha="1" force_rhr="0" name="2">
        <layer class="SimpleFill" pass="0" enabled="1" locked="0">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="0,176,20,255"/>
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
      <symbol clip_to_extent="1" type="fill" alpha="1" force_rhr="0" name="3">
        <layer class="SimpleFill" pass="0" enabled="1" locked="0">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="151,151,151,255"/>
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
      <symbol clip_to_extent="1" type="fill" alpha="1" force_rhr="0" name="4">
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
      <symbol clip_to_extent="1" type="fill" alpha="1" force_rhr="0" name="5">
        <layer class="SimpleFill" pass="0" enabled="1" locked="0">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="4,0,255,255"/>
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
      <symbol clip_to_extent="1" type="fill" alpha="1" force_rhr="0" name="6">
        <layer class="SimpleFill" pass="0" enabled="1" locked="0">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="0,176,20,255"/>
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
      <symbol clip_to_extent="1" type="fill" alpha="1" force_rhr="0" name="7">
        <layer class="SimpleFill" pass="0" enabled="1" locked="0">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="151,151,151,255"/>
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
      <symbol clip_to_extent="1" type="fill" alpha="1" force_rhr="0" name="8">
        <layer class="SimpleFill" pass="0" enabled="1" locked="0">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="234,255,0,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="255,203,32,255"/>
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
      <symbol clip_to_extent="1" type="fill" alpha="1" force_rhr="0" name="9">
        <layer class="SimpleFill" pass="0" enabled="1" locked="0">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="165,228,157,0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="222,0,3,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="1.06"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="no"/>
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
