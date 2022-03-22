<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="2.18.20" minimumScale="inf" maximumScale="1e+08" hasScaleBasedVisibilityFlag="0">
  <pipe>
    <rasterrenderer opacity="1" alphaBand="0" classificationMax="50" classificationMinMaxOrigin="User" band="1" classificationMin="0" type="singlebandpseudocolor">
      <rasterTransparency>
        <singleValuePixelList>
          <pixelListEntry min="0" max="1.3" percentTransparent="100"/>
        </singleValuePixelList>
      </rasterTransparency>
      <rastershader>
        <colorrampshader colorRampType="DISCRETE" clip="0">
          <item alpha="255" value="9" label="Jungwuchs / Dickung (bis 9m)" color="#01df10"/>
          <item alpha="255" value="16" label="Stangenholz (9 - 16m)" color="#fdae61"/>
          <item alpha="255" value="24" label="schwaches Baumholz (16 - 24m)" color="#822c16"/>
          <item alpha="255" value="34" label="mittleres Baumholz (24 - 34m)" color="#079cd7"/>
          <item alpha="255" value="100" label="starkes Baumholz (>34m)" color="#8b1c8f"/>
        </colorrampshader>
      </rastershader>
    </rasterrenderer>
    <brightnesscontrast brightness="0" contrast="0"/>
    <huesaturation colorizeGreen="128" colorizeOn="0" colorizeRed="255" colorizeBlue="128" grayscaleMode="0" saturation="0" colorizeStrength="100"/>
    <rasterresampler maxOversampling="2"/>
  </pipe>
  <blendMode>0</blendMode>
</qgis>
