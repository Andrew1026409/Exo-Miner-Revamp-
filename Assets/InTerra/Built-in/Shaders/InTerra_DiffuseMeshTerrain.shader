Shader "InTerra/Built-in/Diffuse/Mesh Terrain (Diffuse)"
{
    Properties
    {
        [HideInInspector] _MipMapFade("Parallax MipMap fade",  vector) = (3,15,0,35)
        [HideInInspector] _MipMapLevel("Parallax MipMap level", Float) = 0
        [HideInInspector] _MipMapCount("Main Mask MipMap Count", Float) = 15

        _HT_distance("Distance",  vector) = (3,10,0,25)
        _HT_distance_scale("Scale",   Range(0,0.5)) = 0.25
        _HT_cover("Cover strenght",   Range(0,1)) = 0.8
        _ParallaxAffineStepsTerrain("", Float) = 3
        _MipMapFade("Parallax MipMap fade",  vector) = (3,15,0,35)
        _MipMapLevel("Parallax MipMap level", Float) = 0
        [HideInInspector] _HeightTransition("Height blending Sharpness",   Range(0,60)) = 40
        [HideInInspector] _Distance_HeightTransition("Distance Height blending Sharpness ", Range(0,60)) = 40

        [HideInInspector] _NumLayersCount("", Float) = 0

        [HideInInspector] _Splat0("s0", 2D) = "white" {}
        [HideInInspector] _Splat1("s1", 2D) = "white" {}
        [HideInInspector] _Splat2("s2", 2D) = "white" {}
        [HideInInspector] _Splat3("s3", 2D) = "white" {}

        [HideInInspector] _Normal0("n0", 2D) = "bump" {}
        [HideInInspector] _Normal1("n1", 2D) = "bump" {}
        [HideInInspector] _Normal2("n2", 2D) = "bump" {}
        [HideInInspector] _Normal3("n3", 2D) = "bump" {}
        [HideInInspector] _TerrainNormalScale("", Vector) = (1,1,1,1)

        [HideInInspector] _Mask0("m0", 2D) = "black" {}
        [HideInInspector] _Mask1("m1", 2D) = "black" {}
        [HideInInspector] _Mask2("m2", 2D) = "black" {}
        [HideInInspector] _Mask3("m3", 2D) = "black" {}

        [HideInInspector] _Specular0("specular 0", Color) = (1,0,0,0)
        [HideInInspector] _Specular1("specular 1", Color) = (1,0,0,0)
        [HideInInspector] _Specular2("specular 2", Color) = (1,0,0,0)
        [HideInInspector] _Specular3("specular 3", Color) = (1,0,0,0)

        [HideInInspector] _SplatUV0("sUV0", Vector) = (1,1,0,0)
        [HideInInspector] _SplatUV1("sUV1", Vector) = (1,1,0,0)
        [HideInInspector] _SplatUV2("sUV2", Vector) = (1,1,0,0)
        [HideInInspector] _SplatUV3("sUV3", Vector) = (1,1,0,0)

        [HideInInspector] _TerrainMetallic("", Vector) = (0, 0, 0, 0)
        [HideInInspector] _TerrainSmoothness("", Vector) = (0, 0, 0, 0)

        [HideInInspector] _MaskMapRemapScale0("", Vector) = (0,0,0,0)
        [HideInInspector] _MaskMapRemapScale1("", Vector) = (0,0,0,0)
        [HideInInspector] _MaskMapRemapScale2("", Vector) = (0,0,0,0)
        [HideInInspector] _MaskMapRemapScale3("", Vector) = (0,0,0,0)

        [HideInInspector] _MaskMapRemapOffset0("", Vector) = (0,0,0,0)
        [HideInInspector] _MaskMapRemapOffset1("", Vector) = (0,0,0,0)
        [HideInInspector] _MaskMapRemapOffset2("", Vector) = (0,0,0,0)
        [HideInInspector] _MaskMapRemapOffset3("", Vector) = (0,0,0,0)

        [HideInInspector] _DiffuseRemapScale0("", Vector) = (1,1,1,1)
        [HideInInspector] _DiffuseRemapScale1("", Vector) = (1,1,1,1)
        [HideInInspector] _DiffuseRemapScale2("", Vector) = (1,1,1,1)
        [HideInInspector] _DiffuseRemapScale3("", Vector) = (1,1,1,1)

        [HideInInspector] _DiffuseRemapOffset0("", Vector) = (0,0,0,0)
        [HideInInspector] _DiffuseRemapOffset1("", Vector) = (0,0,0,0)
        [HideInInspector] _DiffuseRemapOffset2("", Vector) = (0,0,0,0)
        [HideInInspector] _DiffuseRemapOffset3("", Vector) = (0,0,0,0)

        [HideInInspector] _TerrainNormalmapTexture("", 2D) = "bump" {}
        [HideInInspector] _TerrainHeightmapTexture("", 2D) = "black" {}
        [HideInInspector] _Control("cntrl", 2D) = "red" {}

        [HideInInspector] _TerrainPosition("tp", Vector) = (0,0,0)
        [HideInInspector] _TerrainSize("ts", Vector) = (100,10,100)
        [HideInInspector] _TerrainHeightmapScale("hms", Vector) = (1, 100, 1, 50)
        [HideInInspector] _HeightmapBase("", Float) = 0
        [HideInInspector] _HeightmapBaseCustom("", Float) = 0

        [HideInInspector] _TriplanarOneToAllSteep("", Float) = 0
        [HideInInspector] _TriplanarSharpness("Triplanar Sharpness", Range(3,10)) = 8

        [HideInInspector] _TerrainColorTintTexture("Color Tint Texture", 2D) = "white" {}
        [HideInInspector] _TerrainColorTintStrenght("Color Tint Strenght", Range(1, 0)) = 0

        [HideInInspector] _TerrainNormalTintTexture("Additional Normal Texture", 2D) = "bump" {}
        [HideInInspector] _TerrainNormalTintStrenght("Additional Normal Strenght", Range(0, 1)) = 0.0
        [HideInInspector] _TerrainNormalTintDistance("Additional Normal Distance", vector) = (3, 10, 0, 25)
        [HideInInspector] _CustomTerrainSelection("", Float) = 0
        [HideInInspector] _WorldMapping("", Float) = 0
        [HideInInspector] _GlobalSmoothness("", Range(0, 1)) = 0

        [HideInInspector] _HeightmapBlending("", Float) = 1
        [HideInInspector] _Terrain_Parallax("", Float) = 0
        [HideInInspector] _Tracks("", Float) = 0
        [HideInInspector] _Gamma("", Float) = 0

        [HideInInspector] _TrackAO("", Range(0, 1)) = 0.8
        [HideInInspector] _TrackEdgeNormals("Track Edge index", Range(0.001, 4)) = 1
        [HideInInspector] _TrackEdgeSharpness("Track Edge Normals", Range(0.001, 4)) = 1
        [HideInInspector] _TrackDetailTexture("Track Color Detail Texture", 2D) = "white" {}
        [HideInInspector] _TrackDetailNormalTexture("Track Normal Detail Texture", 2D) = "bump" {}
        [HideInInspector] _TrackDetailNormalStrenght("Track Detail Normal Strenght", Float) = 1
        [HideInInspector] _TrackNormalStrenght("Track Normal Strenght", Float) = 1
        [HideInInspector] _TrackHeightOffset("Track Heightmap Offset", Range(-1, 1)) = 0
        [HideInInspector] _TrackMultiplyStrenght("Track Multiply strenght", Float) = 3
        [HideInInspector] _TrackHeightTransition("Track Normal Strenght", Range(0, 60)) = 20
        [HideInInspector] _ParallaxTrackAffineSteps("", Float) = 3
        [HideInInspector] _ParallaxTrackSteps("", Float) = 5
    }

    SubShader {
        Tags { "RenderType" = "Opaque"}
		LOD 200

        CGPROGRAM
        #pragma surface surf Lambert vertex:SplatmapVert addshadow fullforwardshadows
        #pragma target 3.0

        #pragma shader_feature_local _TERRAIN_DISTANCEBLEND
        #pragma shader_feature_local __ _TERRAIN_TRIPLANAR_ONE _TERRAIN_TRIPLANAR

        #pragma shader_feature_local __ _LAYERS_TWO

        #define DIFFUSE
        #define INTERRA_MESH_TERRAIN 
  
        #include "InTerra_DefinedGlobalKeywords.cginc"
        #include "InTerra_InputsAndFunctions.cginc"
        #include "InTerra_Mixing.cginc"
      
        //===========================================================================
        //--------------------------------- SURFACE ---------------------------------
        //===========================================================================
        void surf (Input IN, inout SurfaceOutput o) {
            half weight;
            fixed4 mixedDiffuse;

            SplatmapMix(IN, _TerrainSmoothness, weight, mixedDiffuse, o.Normal);
            o.Albedo = mixedDiffuse.rgb;
        }
        ENDCG 
    }
    FallBack "Diffuse"
    CustomEditor "InTerra.InTerra_TerrainShaderGUI"
}