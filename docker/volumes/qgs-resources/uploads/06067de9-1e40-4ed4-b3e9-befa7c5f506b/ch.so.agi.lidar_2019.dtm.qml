<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="2.18.28" minimumScale="inf" maximumScale="1e+08" hasScaleBasedVisibilityFlag="0">
  <pipe>
    <rasterrenderer opacity="1" alphaBand="-1" classificationMax="1200" classificationMinMaxOrigin="User" band="1" classificationMin="300" type="singlebandpseudocolor">
      <rasterTransparency>
        <singleValuePixelList>
          <pixelListEntry min="0" max="0" percentTransparent="100"/>
        </singleValuePixelList>
      </rasterTransparency>
      <rastershader>
        <colorrampshader colorRampType="INTERPOLATED" clip="0">
          <item alpha="255" value="300" label="300m bis 400m" color="#48840b"/>
          <item alpha="255" value="400" label="400m bis 500m" color="#59a80f"/>
          <item alpha="255" value="500" label="500m bis 600m" color="#9ed54c"/>
          <item alpha="255" value="600" label="600m bis 700m" color="#c4ed68"/>
          <item alpha="255" value="700" label="700m bis 800m" color="#e2ff9e"/>
          <item alpha="255" value="800" label="800m bis 900m" color="#feecae"/>
          <item alpha="255" value="900" label="900m bis 1000m" color="#f8ca8c"/>
          <item alpha="255" value="1000" label="1000m bis 1100m" color="#f0a848"/>
          <item alpha="255" value="1100" label="1100m bis 1200m" color="#a07c62"/>
          <item alpha="255" value="1200" label="1200m bis 1300m" color="#755548"/>
          <item alpha="255" value="1300" label=">1300m" color="#5a463f"/>
        </colorrampshader>
      </rastershader>
    </rasterrenderer>
    <brightnesscontrast brightness="0" contrast="0"/>
    <huesaturation colorizeGreen="128" colorizeOn="0" colorizeRed="255" colorizeBlue="128" grayscaleMode="0" saturation="0" colorizeStrength="100"/>
    <rasterresampler maxOversampling="2"/>
  </pipe>
  <blendMode>0</blendMode>
</qgis>
