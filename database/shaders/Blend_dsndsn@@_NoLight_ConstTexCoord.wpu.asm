//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyeDirection;
//   float4 g_EyePosition;
//   float4 g_ForceAlphaColor;
//   float4 g_GI0Scale;
//   float4 g_GI1Scale;
//   sampler2D g_GISampler;
//   float4 g_LightScatteringColor;
//   row_major float4x4 g_MtxView;
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   sampler2D sampBlend;
//   sampler2D sampDif0;
//   sampler2D sampDif1;
//   sampler2D sampEnv;
//   sampler2D sampNrm;
//   sampler2D sampSpc0;
//   sampler2D sampSpc1;
//
//
// Registers:
//
//   Name                       Reg   Size
//   -------------------------- ----- ----
//   mrgGlobalLight_Direction   c10      1
//   g_Diffuse                  c16      1
//   g_Ambient                  c17      1
//   g_Specular                 c18      1
//   g_PowerGlossLevel          c20      1
//   g_EyePosition              c22      1
//   g_EyeDirection             c23      1
//   mrgGlobalLight_Diffuse     c36      1
//   mrgGlobalLight_Specular    c37      1
//   mrgEyeLight_Diffuse        c58      1
//   mrgEyeLight_Specular       c59      1
//   mrgEyeLight_Range          c60      1
//   mrgEyeLight_Attribute      c61      1
//   mrgLuminanceRange          c63      1
//   mrgInShadowScale           c64      1
//   g_ShadowMapParams          c65      1
//   g_GI0Scale                 c70      1
//   g_GI1Scale                 c71      1
//   g_LightScatteringColor     c75      1
//   g_ForceAlphaColor          c89      1
//   g_MtxView                  c90      3
//   sampDif0                   s0       1
//   sampDif1                   s1       1
//   sampSpc0                   s2       1
//   sampSpc1                   s3       1
//   sampNrm                    s4       1
//   sampBlend                  s5       1
//   sampEnv                    s6       1
//   g_VerticalShadowMapSampler s7       1
//   g_GISampler                s10      1
//   g_ShadowMapSampler         s13      1
//

    ps_3_0
    def c0, 0.298900008, 0.586600006, 0.114399999, 1024
    def c1, 2, -1, 1, 0
    def c2, -2, 3, 500, 5
    def c3, 0.5, -0.5, 4, 0
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4 v3
    dcl_texcoord6 v4
    dcl_texcoord5_pp v5.xyz
    dcl_texcoord7 v6.xyz
    dcl_texcoord8 v7.xyz
    dcl_color_pp v8
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s4
    dcl_2d s5
    dcl_2d s6
    dcl_2d s7
    dcl_2d s10
    dcl_2d s13
    add_pp r0.x, -c61.z, c61.y
    rcp_pp r0.x, r0.x
    add r0.yzw, -c22.xxyz, v1.xxyz
    dp3 r1.x, r0.yzww, r0.yzww
    rsq r1.x, r1.x
    mul_pp r0.yzw, r0, r1.x
    rcp r1.x, r1.x
    add r1.x, r1.x, -c60.z
    dp3_pp r1.y, r0.yzww, c23
    add_pp r1.y, r1.y, -c61.z
    mul_sat_pp r0.x, r0.x, r1.y
    mad_pp r1.y, r0.x, c2.x, c2.y
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov_pp r1.z, c1.z
    add r0.x, r1.z, -c61.x
    cmp_pp r0.x, r0.x, c1.z, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c1.z
    cmp_pp r1.x, -c61.x, r1.z, r1.x
    mul_pp r0.x, r0.x, r1.x
    add_pp r1.xyz, c22, -v1
    dp3_pp r1.w, r1, r1
    rsq_pp r1.w, r1.w
    mad_pp r2.xyz, r1, r1.w, -r0.yzww
    mad_pp r1.xyz, r1, r1.w, -c10
    nrm_pp r3.xyz, r1
    nrm_pp r1.xyz, r2
    nrm_pp r2.xyz, v7
    texld_pp r4, v0, s4
    mul_pp r4.x, r4.w, r4.x
    mad_pp r4.xy, r4, c1.x, c1.y
    mul_pp r2.xyz, r2, r4.y
    nrm_pp r5.xyz, v6
    mad_pp r2.xyz, r4.x, r5, r2
    dp2add_pp r1.w, r4, -r4, c1.z
    rsq_pp r1.w, r1.w
    rcp_pp r1.w, r1.w
    nrm_pp r4.xyz, v2
    mad_pp r2.xyz, r1.w, r4, r2
    dp3_sat_pp r1.x, r1, r2
    texld_pp r4, v0, s2
    texld_pp r5, v0, s3
    texld_pp r6, v0, s5
    lrp_pp r7, r6.x, r5, r4
    mul_pp r1.yz, r7.w, c20
    mul_pp r1.yz, r1, c2.xzww
    max_pp r2.w, r1.y, c1.z
    min r1.y, r2.w, c0.w
    pow r2.w, r1.x, r1.y
    mul_pp r4.xyz, c59.w, c59
    mul_pp r4.xyz, r1.z, r4
    mul_pp r1.xzw, r1.z, c37.xyyz
    mul_pp r4.xyz, r2.w, r4
    mul_pp r4.xyz, r0.x, r4
    max r2.w, v3.z, c1.w
    add r3.w, r2.w, -v3.w
    cmp r5.z, r3.w, c1.w, r2.w
    mov r5.xyw, v3
    texldp_pp r5, r5, s13
    max r2.w, v4.z, c1.w
    add r3.w, r2.w, -v4.w
    cmp r8.z, r3.w, c1.w, r2.w
    mov r8.xyw, v4
    texldp_pp r8, r8, s7
    min_pp r2.w, r8.x, r5.x
    lrp_pp r3.w, v5.z, c1.z, r8.x
    lrp_pp r4.w, v5.z, c1.z, r2.w
    rcp r2.w, v3.w
    mul r5.xy, r2.w, v3
    mad r5.xy, r5, c1.x, c1.y
    abs_sat r5.xy, r5
    add_sat r5.xy, r5, -c65.x
    mul r5.xy, r5, c65.y
    max r2.w, r5.x, r5.y
    lrp_pp r5.x, r2.w, c1.z, r4.w
    lrp_pp r4.w, r2.w, c1.z, r3.w
    texld_pp r8, v0.zwzw, s10
    mul r2.w, r5.x, r8.w
    dp3_sat_pp r3.x, r3, r2
    pow r5.x, r3.x, r1.y
    mul_pp r1.xyz, r1.xzww, r5.x
    mad_pp r1.xyz, r1, r2.w, r4
    mul r3, r2.y, c91
    mad r3, r2.x, c90, r3
    mad r3, r2.z, c92, r3
    dp4 r1.w, r3, r3
    rsq r1.w, r1.w
    mul r3.xy, r1.w, r3
    mad_pp r3.xy, r3, c3, c3.x
    texld_pp r3, r3, s6
    mul r4.xyz, r3, c63.x
    mad_pp r3.xyz, r4, r3.w, r3
    mul_pp r3.xyz, r7.w, r3
    mul r1.w, c64.z, c64.x
    mov r4.xz, c64
    mad r3.w, r4.x, -r4.z, r4.z
    mad_pp r1.w, r2.w, r3.w, r1.w
    mul_pp r3.xyz, r1.w, r3
    mad_pp r1.xyz, r1, c18, r3
    mul_pp r1.xyz, r7, r1
    mul_pp r1.xyz, r1, v2.w
    mul_pp r3.xyz, r8, r8
    dp3_pp r1.w, r3, c0
    mad_pp r3.xyz, r8, r8, -r1.w
    mad_sat_pp r3.xyz, r3, c71.w, r1.w
    mul_pp r3.xyz, r3, c70
    mul_pp r4.xyz, r3, c17
    mul r4.xyz, r4, c70.w
    mad r3.xyz, r3, c17, -r4
    mad_pp r3.xyz, r4.w, r3, r4
    dp3_pp r1.w, r2, -c10
    dp3_pp r0.y, r2, -r0.yzww
    mul r2.xyz, r1.w, c36
    mul_pp r2.xyz, r2.w, r2
    cmp_pp r2.xyz, r1.w, r2, c1.w
    mul_pp r4.xyz, c58.w, c58
    mul_pp r4.xyz, r0.y, r4
    cmp_pp r0.yzw, r0.y, r4.xxyz, c1.w
    mad_pp r0.xyz, r0.x, r0.yzww, r2
    add_pp r0.xyz, r0, r3
    mul_pp r0.xyz, r0, c16
    texld_pp r2, v0, s0
    texld_pp r3, v0, s1
    lrp_pp r4, r6.x, r3, r2
    mad_pp r0.xyz, r0, r4, r1
    mul_pp r0.w, r4.w, c16.w
    mul_pp r0, r0, v8
    mul_pp r0, r0, c89
    min_pp r1, r0, c3.z
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 153 instruction slots used (10 texture, 143 arithmetic)
