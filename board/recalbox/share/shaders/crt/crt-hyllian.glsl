// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying 
#define COMPAT_ATTRIBUTE attribute 
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec2 _texCoord1;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec2 _texCoord1;
};
vec4 _oPosition1;
out_vertex _ret_0;
vec4 _r0008;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX0;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    _r0008 = VertexCoord.x*MVPMatrix[0];
    _r0008 = _r0008 + VertexCoord.y*MVPMatrix[1];
    _r0008 = _r0008 + VertexCoord.z*MVPMatrix[2];
    _r0008 = _r0008 + VertexCoord.w*MVPMatrix[3];
    _oPosition1 = _r0008;
    _ret_0._texCoord1 = TexCoord.xy;
    gl_Position = _r0008;
    TEX0.xy = TexCoord.xy;
    return;
    TEX0.xy = _ret_0._texCoord1;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec2 _texCoord;
};
vec4 _ret_0;
float _TMP11;
float _TMP10;
float _TMP9;
vec3 _TMP12;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec2 _TMP0;
uniform sampler2D Texture;
input_dummy _IN1;
vec2 _c0026;
vec2 _c0036;
vec2 _c0046;
vec2 _c0056;
vec2 _c0066;
vec2 _c0086;
vec2 _c0096;
vec4 _r0106;
vec4 _v0106;
vec3 _r0116;
vec3 _r0118;
vec3 _TMP123;
vec3 _x0124;
vec3 _TMP129;
vec3 _x0130;
vec3 _TMP135;
vec3 _x0136;
vec3 _TMP145;
vec3 _x0146;
vec3 _TMP155;
vec3 _x0156;
COMPAT_VARYING vec4 TEX0;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec3 _color;
    vec2 _dx;
    vec2 _dy;
    vec2 _pix_coord;
    vec2 _tc;
    vec2 _fp;
    vec3 _c00;
    vec3 _c01;
    vec3 _c02;
    vec3 _c03;
    vec3 _c10;
    vec3 _c11;
    vec3 _c12;
    vec3 _c13;
    float _pos1;
    vec3 _lum0;
    vec3 _lum1;
    _dx = vec2(1.00000000E+00/TextureSize.x, 0.00000000E+00);
    _dy = vec2(0.00000000E+00, 1.00000000E+00/TextureSize.y);
    _pix_coord = TEX0.xy*TextureSize + vec2( -5.00000000E-01, 5.00000000E-01);
    _TMP0 = floor(_pix_coord);
    _tc = (_TMP0 + vec2( 5.00000000E-01, 5.00000000E-01))/TextureSize;
    _fp = fract(_pix_coord);
    _c0026 = (_tc - _dx) - _dy;
    _TMP1 = COMPAT_TEXTURE(Texture, _c0026);
    _TMP9 = pow(_TMP1.x, 2.40000010E+00);
    _TMP10 = pow(_TMP1.y, 2.40000010E+00);
    _TMP11 = pow(_TMP1.z, 2.40000010E+00);
    _c00 = vec3(_TMP9, _TMP10, _TMP11);
    _c0036 = _tc - _dy;
    _TMP2 = COMPAT_TEXTURE(Texture, _c0036);
    _TMP9 = pow(_TMP2.x, 2.40000010E+00);
    _TMP10 = pow(_TMP2.y, 2.40000010E+00);
    _TMP11 = pow(_TMP2.z, 2.40000010E+00);
    _c01 = vec3(_TMP9, _TMP10, _TMP11);
    _c0046 = (_tc + _dx) - _dy;
    _TMP3 = COMPAT_TEXTURE(Texture, _c0046);
    _TMP9 = pow(_TMP3.x, 2.40000010E+00);
    _TMP10 = pow(_TMP3.y, 2.40000010E+00);
    _TMP11 = pow(_TMP3.z, 2.40000010E+00);
    _c02 = vec3(_TMP9, _TMP10, _TMP11);
    _c0056 = (_tc + 2.00000000E+00*_dx) - _dy;
    _TMP4 = COMPAT_TEXTURE(Texture, _c0056);
    _TMP9 = pow(_TMP4.x, 2.40000010E+00);
    _TMP10 = pow(_TMP4.y, 2.40000010E+00);
    _TMP11 = pow(_TMP4.z, 2.40000010E+00);
    _c03 = vec3(_TMP9, _TMP10, _TMP11);
    _c0066 = _tc - _dx;
    _TMP5 = COMPAT_TEXTURE(Texture, _c0066);
    _TMP9 = pow(_TMP5.x, 2.40000010E+00);
    _TMP10 = pow(_TMP5.y, 2.40000010E+00);
    _TMP11 = pow(_TMP5.z, 2.40000010E+00);
    _c10 = vec3(_TMP9, _TMP10, _TMP11);
    _TMP6 = COMPAT_TEXTURE(Texture, _tc);
    _TMP9 = pow(_TMP6.x, 2.40000010E+00);
    _TMP10 = pow(_TMP6.y, 2.40000010E+00);
    _TMP11 = pow(_TMP6.z, 2.40000010E+00);
    _c11 = vec3(_TMP9, _TMP10, _TMP11);
    _c0086 = _tc + _dx;
    _TMP7 = COMPAT_TEXTURE(Texture, _c0086);
    _TMP9 = pow(_TMP7.x, 2.40000010E+00);
    _TMP10 = pow(_TMP7.y, 2.40000010E+00);
    _TMP11 = pow(_TMP7.z, 2.40000010E+00);
    _c12 = vec3(_TMP9, _TMP10, _TMP11);
    _c0096 = _tc + 2.00000000E+00*_dx;
    _TMP8 = COMPAT_TEXTURE(Texture, _c0096);
    _TMP9 = pow(_TMP8.x, 2.40000010E+00);
    _TMP10 = pow(_TMP8.y, 2.40000010E+00);
    _TMP11 = pow(_TMP8.z, 2.40000010E+00);
    _c13 = vec3(_TMP9, _TMP10, _TMP11);
    _v0106 = vec4(_fp.x*_fp.x*_fp.x, _fp.x*_fp.x, _fp.x, 1.00000000E+00);
    _r0106.x = dot(vec4( -5.00000000E-01, 1.00000000E+00, -5.00000000E-01, 0.00000000E+00), _v0106);
    _r0106.y = dot(vec4( 1.50000000E+00, -2.50000000E+00, 0.00000000E+00, 1.00000000E+00), _v0106);
    _r0106.z = dot(vec4( -1.50000000E+00, 2.00000000E+00, 5.00000000E-01, 0.00000000E+00), _v0106);
    _r0106.w = dot(vec4( 5.00000000E-01, -5.00000000E-01, 0.00000000E+00, 0.00000000E+00), _v0106);
    _r0116 = _r0106.x*_c00;
    _r0116 = _r0116 + _r0106.y*_c01;
    _r0116 = _r0116 + _r0106.z*_c02;
    _r0116 = _r0116 + _r0106.w*_c03;
    _r0118 = _r0106.x*_c10;
    _r0118 = _r0118 + _r0106.y*_c11;
    _r0118 = _r0118 + _r0106.z*_c12;
    _r0118 = _r0118 + _r0106.w*_c13;
    _pos1 = 1.00000000E+00 - _fp.y;
    _lum0 = vec3( 8.60000014E-01, 8.60000014E-01, 8.60000014E-01) + _r0116*vec3( 1.39999986E-01, 1.39999986E-01, 1.39999986E-01);
    _lum1 = vec3( 8.60000014E-01, 8.60000014E-01, 8.60000014E-01) + _r0118*vec3( 1.39999986E-01, 1.39999986E-01, 1.39999986E-01);
    _x0124 = _fp.y/(_lum0 + 1.00000001E-07);
    _TMP12 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0124);
    _TMP123 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP12);
    _x0130 = _pos1/(_lum1 + 1.00000001E-07);
    _TMP12 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0130);
    _TMP129 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP12);
    _x0136 = (-7.20000029E+00*_TMP123)*_TMP123;
    _TMP9 = pow(2.71828198E+00, _x0136.x);
    _TMP10 = pow(2.71828198E+00, _x0136.y);
    _TMP11 = pow(2.71828198E+00, _x0136.z);
    _TMP135 = vec3(_TMP9, _TMP10, _TMP11);
    _x0146 = (-7.20000029E+00*_TMP129)*_TMP129;
    _TMP9 = pow(2.71828198E+00, _x0146.x);
    _TMP10 = pow(2.71828198E+00, _x0146.y);
    _TMP11 = pow(2.71828198E+00, _x0146.z);
    _TMP145 = vec3(_TMP9, _TMP10, _TMP11);
    _x0156 = _r0116*_TMP135 + _r0118*_TMP145;
    _TMP12 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0156);
    _TMP155 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP12);
    _color = _TMP155*1.50000000E+00;
    _TMP9 = pow(_color.x, 4.54545438E-01);
    _TMP10 = pow(_color.y, 4.54545438E-01);
    _TMP11 = pow(_color.z, 4.54545438E-01);
    _color = vec3(_TMP9, _TMP10, _TMP11);
    _ret_0 = vec4(_color.x, _color.y, _color.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
