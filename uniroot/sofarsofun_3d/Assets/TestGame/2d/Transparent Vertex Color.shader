Shader "Mobile/Transparent/Vertex Color" {
	Properties{
		_Color("Main Color", Color) = (1,1,1,1)		
		[PerRendererData] _MainTex("Base (RGB) Trans (A)", 2D) = "white" {}
	}

		Category{
		Tags
	{ 
		"Queue" = "Transparent" 
		"IgnoreProjector" = "True" 
		"RenderType" = "Transparent"
		"PreviewType" = "Plane"
		"CanUseSpriteAtlas" = "True"
	}

		Cull Off
		Lighting Off
		ZWrite Off
		Alphatest Greater 0
		Blend SrcAlpha OneMinusSrcAlpha
		SubShader
	{
		Material
	{
		Diffuse[_Color]		
	}
		Pass{

		
		Cull Off
		Lighting Off
		SeparateSpecular Off

	SetTexture[_MainTex]
	{
		Combine texture * primary, texture * primary
	}
	SetTexture[_MainTex]
	{
		constantColor[_Color]
		Combine previous * constant DOUBLE, previous * constant
	}
	}
	}
	}
}