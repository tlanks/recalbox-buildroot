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
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec4 _color2;
COMPAT_VARYING     vec2 VARcosangle;
COMPAT_VARYING     vec2 VARsinangle;
COMPAT_VARYING     vec3 VARstretch;
COMPAT_VARYING     vec2 _texCoord1;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     vec4 _position1;
struct out_vertex {
    vec4 _position1;
    vec4 _color1;
    vec2 _texCoord1;
    vec3 VARstretch;
    vec2 VARsinangle;
    vec2 VARcosangle;
};
struct output_dummy {
    vec4 _color2;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
out_vertex _ret_0;
float _TMP9;
vec2 _TMP8;
vec2 _TMP7;
float _TMP22;
float _TMP21;
float _TMP20;
float _TMP19;
float _TMP18;
float _TMP17;
float _TMP26;
vec2 _TMP6;
vec2 _TMP5;
float _TMP16;
float _TMP15;
float _TMP14;
float _TMP27;
float _TMP13;
float _TMP12;
float _TMP11;
float _TMP10;
float _TMP25;
float _TMP24;
float _TMP23;
float _TMP4;
float _TMP3;
float _TMP2;
float _TMP1;
vec4 _r0034;
vec2 _c0048;
vec2 _lo0048;
vec2 _hi0048;
vec2 _TMP300048;
float _c0050;
vec2 _xy0050;
vec2 _point0050;
vec2 _tang0050;
vec2 _poc0050;
float _A0050;
float _B0050;
float _C0050;
float _a0050;
vec2 _uv0050;
float _r0050;
float _A0052;
float _B0052;
float _C0052;
float _a0058;
float _a0068;
float _negate0072;
float _x0072;
float _ret0072;
float _a0076;
float _a0080;
float _a0084;
vec2 _uv0086;
float _r0086;
float _x0086;
float _D0086;
float _a0098;
float _a0100;
vec2 _uv0104;
float _r0104;
float _x0104;
float _D0104;
float _a0116;
float _a0118;
vec2 _uv0122;
float _r0122;
float _x0122;
float _D0122;
float _a0134;
float _a0136;
vec2 _uv0140;
float _r0140;
float _x0140;
float _D0140;
float _a0152;
float _a0154;
float _a0158;
float _b0158;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    out_vertex _OUT;
    _r0034 = VertexCoord.x*MVPMatrix[0];
    _r0034 = _r0034 + VertexCoord.y*MVPMatrix[1];
    _r0034 = _r0034 + VertexCoord.z*MVPMatrix[2];
    _r0034 = _r0034 + VertexCoord.w*MVPMatrix[3];
    _OUT._texCoord1 = TexCoord.xy*vec2( 2.50000000E+00, 1.25000000E+00) - vec2( 1.29999995E-01, 5.49999997E-02);
    _TMP1 = sin(0.00000000E+00);
    _TMP2 = sin(0.00000000E+00);
    _OUT.VARsinangle = vec2(_TMP1, _TMP2);
    _TMP3 = cos(0.00000000E+00);
    _TMP4 = cos(0.00000000E+00);
    _OUT.VARcosangle = vec2(_TMP3, _TMP4);
    _xy0050 = (-5.50000012E-01*_OUT.VARsinangle)/(1.00000000E+00 + 9.16666687E-02*_OUT.VARcosangle.x*_OUT.VARcosangle.y);
    _TMP23 = dot(_xy0050, _xy0050);
    _A0052 = _TMP23 + 3.60000000E+01;
    _TMP24 = dot(_xy0050, _OUT.VARsinangle);
    _B0052 = 2.00000000E+00*(5.50000012E-01*(_TMP24 - 6.00000000E+00*_OUT.VARcosangle.x*_OUT.VARcosangle.y) - 3.60000000E+01);
    _C0052 = 3.60000000E+01 + 6.60000038E+00*_OUT.VARcosangle.x*_OUT.VARcosangle.y;
    _a0058 = _B0052*_B0052 - 4.00000000E+00*_A0052*_C0052;
    _TMP26 = inversesqrt(_a0058);
    _TMP25 = 1.00000000E+00/_TMP26;
    _c0050 = (-_B0052 - _TMP25)/(2.00000000E+00*_A0052);
    _point0050 = vec2(_c0050, _c0050)*_xy0050;
    _point0050 = _point0050 - vec2( -5.50000012E-01, -5.50000012E-01)*_OUT.VARsinangle;
    _point0050 = _point0050/vec2( 5.50000012E-01, 5.50000012E-01);
    _tang0050 = _OUT.VARsinangle/_OUT.VARcosangle;
    _poc0050 = _point0050/_OUT.VARcosangle;
    _TMP10 = dot(_tang0050, _tang0050);
    _A0050 = _TMP10 + 1.00000000E+00;
    _TMP11 = dot(_poc0050, _tang0050);
    _B0050 = -2.00000000E+00*_TMP11;
    _TMP12 = dot(_poc0050, _poc0050);
    _C0050 = _TMP12 - 1.00000000E+00;
    _a0068 = _B0050*_B0050 - 4.00000000E+00*_A0050*_C0050;
    _TMP26 = inversesqrt(_a0068);
    _TMP13 = 1.00000000E+00/_TMP26;
    _a0050 = (-_B0050 + _TMP13)/(2.00000000E+00*_A0050);
    _uv0050 = (_point0050 - _a0050*_OUT.VARsinangle)/_OUT.VARcosangle;
    _negate0072 = float((_a0050 < 0.00000000E+00));
    _x0072 = abs(_a0050);
    _ret0072 = -1.87292993E-02*_x0072;
    _ret0072 = _ret0072 + 7.42610022E-02;
    _ret0072 = _ret0072*_x0072;
    _ret0072 = _ret0072 - 2.12114394E-01;
    _ret0072 = _ret0072*_x0072;
    _ret0072 = _ret0072 + 1.57072902E+00;
    _a0076 = 1.00000000E+00 - _x0072;
    _TMP26 = inversesqrt(_a0076);
    _TMP27 = 1.00000000E+00/_TMP26;
    _ret0072 = _ret0072*_TMP27;
    _ret0072 = _ret0072 - 2.00000000E+00*_negate0072*_ret0072;
    _TMP14 = _negate0072*3.14159298E+00 + _ret0072;
    _a0080 = 5.50000012E-01*_TMP14;
    _TMP15 = abs(_a0080);
    _r0050 = max(_TMP15, 9.99999975E-06);
    _a0084 = _r0050/5.50000012E-01;
    _TMP16 = sin(_a0084);
    _c0048 = (_uv0050*_r0050)/_TMP16;
    _uv0086 = vec2(-5.00000000E-01, _c0048.y);
    _TMP17 = dot(_uv0086, _uv0086);
    _TMP26 = inversesqrt(_TMP17);
    _TMP18 = 1.00000000E+00/_TMP26;
    _TMP19 = abs(_TMP18);
    _r0086 = max(_TMP19, 9.99999975E-06);
    _a0098 = _r0086/5.50000012E-01;
    _TMP20 = sin(_a0098);
    _uv0086 = _uv0086*(_TMP20/_r0086);
    _a0100 = _r0086/5.50000012E-01;
    _TMP21 = cos(_a0100);
    _x0086 = 1.00000000E+00 - _TMP21;
    _TMP22 = dot(_uv0086, _OUT.VARsinangle);
    _D0086 = 1.09090910E+01 + _x0086*_OUT.VARcosangle.x*_OUT.VARcosangle.y + _TMP22;
    _TMP5 = (6.00000000E+00*(_uv0086*_OUT.VARcosangle - _x0086*_OUT.VARsinangle))/_D0086;
    _uv0104 = vec2(_c0048.x, -5.00000000E-01);
    _TMP17 = dot(_uv0104, _uv0104);
    _TMP26 = inversesqrt(_TMP17);
    _TMP18 = 1.00000000E+00/_TMP26;
    _TMP19 = abs(_TMP18);
    _r0104 = max(_TMP19, 9.99999975E-06);
    _a0116 = _r0104/5.50000012E-01;
    _TMP20 = sin(_a0116);
    _uv0104 = _uv0104*(_TMP20/_r0104);
    _a0118 = _r0104/5.50000012E-01;
    _TMP21 = cos(_a0118);
    _x0104 = 1.00000000E+00 - _TMP21;
    _TMP22 = dot(_uv0104, _OUT.VARsinangle);
    _D0104 = 1.09090910E+01 + _x0104*_OUT.VARcosangle.x*_OUT.VARcosangle.y + _TMP22;
    _TMP6 = (6.00000000E+00*(_uv0104*_OUT.VARcosangle - _x0104*_OUT.VARsinangle))/_D0104;
    _lo0048 = vec2(_TMP5.x, _TMP6.y);
    _uv0122 = vec2(5.00000000E-01, _c0048.y);
    _TMP17 = dot(_uv0122, _uv0122);
    _TMP26 = inversesqrt(_TMP17);
    _TMP18 = 1.00000000E+00/_TMP26;
    _TMP19 = abs(_TMP18);
    _r0122 = max(_TMP19, 9.99999975E-06);
    _a0134 = _r0122/5.50000012E-01;
    _TMP20 = sin(_a0134);
    _uv0122 = _uv0122*(_TMP20/_r0122);
    _a0136 = _r0122/5.50000012E-01;
    _TMP21 = cos(_a0136);
    _x0122 = 1.00000000E+00 - _TMP21;
    _TMP22 = dot(_uv0122, _OUT.VARsinangle);
    _D0122 = 1.09090910E+01 + _x0122*_OUT.VARcosangle.x*_OUT.VARcosangle.y + _TMP22;
    _TMP7 = (6.00000000E+00*(_uv0122*_OUT.VARcosangle - _x0122*_OUT.VARsinangle))/_D0122;
    _uv0140 = vec2(_c0048.x, 5.00000000E-01);
    _TMP17 = dot(_uv0140, _uv0140);
    _TMP26 = inversesqrt(_TMP17);
    _TMP18 = 1.00000000E+00/_TMP26;
    _TMP19 = abs(_TMP18);
    _r0140 = max(_TMP19, 9.99999975E-06);
    _a0152 = _r0140/5.50000012E-01;
    _TMP20 = sin(_a0152);
    _uv0140 = _uv0140*(_TMP20/_r0140);
    _a0154 = _r0140/5.50000012E-01;
    _TMP21 = cos(_a0154);
    _x0140 = 1.00000000E+00 - _TMP21;
    _TMP22 = dot(_uv0140, _OUT.VARsinangle);
    _D0140 = 1.09090910E+01 + _x0140*_OUT.VARcosangle.x*_OUT.VARcosangle.y + _TMP22;
    _TMP8 = (6.00000000E+00*(_uv0140*_OUT.VARcosangle - _x0140*_OUT.VARsinangle))/_D0140;
    _hi0048 = vec2(_TMP7.x, _TMP8.y);
    _a0158 = _hi0048.x - _lo0048.x;
    _b0158 = _hi0048.y - _lo0048.y;
    _TMP9 = max(_a0158, _b0158);
    _TMP300048 = (_hi0048 + _lo0048)*5.00000000E-01;
    _OUT.VARstretch = vec3(_TMP300048.x, _TMP300048.y, _TMP9);
    _ret_0._position1 = _r0034;
    _ret_0._color1 = COLOR;
    _ret_0._texCoord1 = _OUT._texCoord1;
    VARstretch = _OUT.VARstretch;
    VARsinangle = _OUT.VARsinangle;
    VARcosangle = _OUT.VARcosangle;
    gl_Position = _r0034;
    COL0 = COLOR;
    TEX0.xy = _OUT._texCoord1;
    return;
    COL0 = _ret_0._color1;
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
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     vec2 VARcosangle;
COMPAT_VARYING     vec2 VARsinangle;
COMPAT_VARYING     vec3 VARstretch;
COMPAT_VARYING     vec2 _texCoord1;
COMPAT_VARYING     vec4 _color;
struct out_vertex {
    vec4 _color;
    vec2 _texCoord1;
    vec3 VARstretch;
    vec2 VARsinangle;
    vec2 VARcosangle;
};
struct output_dummy {
    vec4 _color1;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _TMP8;
vec4 _TMP6;
vec4 _TMP4;
vec2 _TMP3;
float _TMP16;
float _TMP15;
float _TMP14;
float _TMP21;
float _TMP20;
float _TMP13;
float _TMP12;
float _TMP11;
float _TMP10;
float _TMP19;
float _TMP18;
float _TMP17;
vec4 _TMP1;
vec2 _TMP0;
out_vertex _VAR1;
uniform sampler2D Texture;
input_dummy _IN1;
float _c0029;
vec2 _point0029;
vec2 _tang0029;
vec2 _poc0029;
float _A0029;
float _B0029;
float _C0029;
float _a0029;
vec2 _uv0029;
float _r0029;
float _A0031;
float _B0031;
float _C0031;
float _a0037;
float _a0047;
float _negate0051;
float _x0051;
float _ret0051;
float _a0055;
float _a0059;
float _a0063;
vec3 _r0067;
float _c0069;
vec2 _point0069;
vec2 _tang0069;
vec2 _poc0069;
float _A0069;
float _B0069;
float _C0069;
float _a0069;
vec2 _uv0069;
float _r0069;
float _A0071;
float _B0071;
float _C0071;
float _a0077;
float _a0087;
float _negate0091;
float _x0091;
float _ret0091;
float _a0095;
float _a0099;
float _a0103;
vec3 _r0107;
vec2 _c0111;
vec3 _r0113;
vec2 _c0117;
vec3 _r0119;
COMPAT_VARYING vec4 TEX0;
uniform vec3 _RGB_to_YIQ[3];
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _xy2;
    vec2 _cd1;
    vec2 _xyoffset;
    vec2 _xy21;
    vec2 _cd21;
    vec2 _xyoffset2;
    vec4 _leftimage;
    vec4 _leftoffset;
    vec4 _rightimage;
    vec4 _rightoffset;
    vec4 _left;
    vec4 _right;
    output_dummy _OUT;
    _cd1 = TEX0.xy*(TextureSize/InputSize);
    _cd1 = (_cd1 - vec2( 5.00000000E-01, 5.00000000E-01))*VARstretch.z + VARstretch.xy;
    _TMP17 = dot(_cd1, _cd1);
    _A0031 = _TMP17 + 3.60000000E+01;
    _TMP18 = dot(_cd1, VARsinangle);
    _B0031 = 2.00000000E+00*(5.50000012E-01*(_TMP18 - 6.00000000E+00*VARcosangle.x*VARcosangle.y) - 3.60000000E+01);
    _C0031 = 3.60000000E+01 + 6.60000038E+00*VARcosangle.x*VARcosangle.y;
    _a0037 = _B0031*_B0031 - 4.00000000E+00*_A0031*_C0031;
    _TMP20 = inversesqrt(_a0037);
    _TMP19 = 1.00000000E+00/_TMP20;
    _c0029 = (-_B0031 - _TMP19)/(2.00000000E+00*_A0031);
    _point0029 = vec2(_c0029, _c0029)*_cd1;
    _point0029 = _point0029 - vec2( -5.50000012E-01, -5.50000012E-01)*VARsinangle;
    _point0029 = _point0029/vec2( 5.50000012E-01, 5.50000012E-01);
    _tang0029 = VARsinangle/VARcosangle;
    _poc0029 = _point0029/VARcosangle;
    _TMP10 = dot(_tang0029, _tang0029);
    _A0029 = _TMP10 + 1.00000000E+00;
    _TMP11 = dot(_poc0029, _tang0029);
    _B0029 = -2.00000000E+00*_TMP11;
    _TMP12 = dot(_poc0029, _poc0029);
    _C0029 = _TMP12 - 1.00000000E+00;
    _a0047 = _B0029*_B0029 - 4.00000000E+00*_A0029*_C0029;
    _TMP20 = inversesqrt(_a0047);
    _TMP13 = 1.00000000E+00/_TMP20;
    _a0029 = (-_B0029 + _TMP13)/(2.00000000E+00*_A0029);
    _uv0029 = (_point0029 - _a0029*VARsinangle)/VARcosangle;
    _negate0051 = float((_a0029 < 0.00000000E+00));
    _x0051 = abs(_a0029);
    _ret0051 = -1.87292993E-02*_x0051;
    _ret0051 = _ret0051 + 7.42610022E-02;
    _ret0051 = _ret0051*_x0051;
    _ret0051 = _ret0051 - 2.12114394E-01;
    _ret0051 = _ret0051*_x0051;
    _ret0051 = _ret0051 + 1.57072902E+00;
    _a0055 = 1.00000000E+00 - _x0051;
    _TMP20 = inversesqrt(_a0055);
    _TMP21 = 1.00000000E+00/_TMP20;
    _ret0051 = _ret0051*_TMP21;
    _ret0051 = _ret0051 - 2.00000000E+00*_negate0051*_ret0051;
    _TMP14 = _negate0051*3.14159298E+00 + _ret0051;
    _a0059 = 5.50000012E-01*_TMP14;
    _TMP15 = abs(_a0059);
    _r0029 = max(_TMP15, 9.99999975E-06);
    _a0063 = _r0029/5.50000012E-01;
    _TMP16 = sin(_a0063);
    _TMP0 = (_uv0029*_r0029)/_TMP16;
    _xy2 = ((_TMP0 + vec2( 5.00000000E-01, 5.00000000E-01))*InputSize)/TextureSize;
    _TMP1 = COMPAT_TEXTURE(Texture, _xy2);
    _r0067 = _TMP1.x*_RGB_to_YIQ[0];
    _r0067 = _r0067 + _TMP1.y*_RGB_to_YIQ[1];
    _r0067 = _r0067 + _TMP1.z*_RGB_to_YIQ[2];
    _xyoffset = 1.50000000E+00*vec2((1.00000000E+00 - _r0067.x)/TextureSize.x, 0.00000000E+00);
    _cd21 = TEX0.xy - vec2(2.56000000E+02/TextureSize.x, 0.00000000E+00);
    _cd21 = _cd21*(TextureSize/InputSize);
    _cd21 = (_cd21 - vec2( 5.00000000E-01, 5.00000000E-01))*VARstretch.z + VARstretch.xy;
    _TMP17 = dot(_cd21, _cd21);
    _A0071 = _TMP17 + 3.60000000E+01;
    _TMP18 = dot(_cd21, VARsinangle);
    _B0071 = 2.00000000E+00*(5.50000012E-01*(_TMP18 - 6.00000000E+00*VARcosangle.x*VARcosangle.y) - 3.60000000E+01);
    _C0071 = 3.60000000E+01 + 6.60000038E+00*VARcosangle.x*VARcosangle.y;
    _a0077 = _B0071*_B0071 - 4.00000000E+00*_A0071*_C0071;
    _TMP20 = inversesqrt(_a0077);
    _TMP19 = 1.00000000E+00/_TMP20;
    _c0069 = (-_B0071 - _TMP19)/(2.00000000E+00*_A0071);
    _point0069 = vec2(_c0069, _c0069)*_cd21;
    _point0069 = _point0069 - vec2( -5.50000012E-01, -5.50000012E-01)*VARsinangle;
    _point0069 = _point0069/vec2( 5.50000012E-01, 5.50000012E-01);
    _tang0069 = VARsinangle/VARcosangle;
    _poc0069 = _point0069/VARcosangle;
    _TMP10 = dot(_tang0069, _tang0069);
    _A0069 = _TMP10 + 1.00000000E+00;
    _TMP11 = dot(_poc0069, _tang0069);
    _B0069 = -2.00000000E+00*_TMP11;
    _TMP12 = dot(_poc0069, _poc0069);
    _C0069 = _TMP12 - 1.00000000E+00;
    _a0087 = _B0069*_B0069 - 4.00000000E+00*_A0069*_C0069;
    _TMP20 = inversesqrt(_a0087);
    _TMP13 = 1.00000000E+00/_TMP20;
    _a0069 = (-_B0069 + _TMP13)/(2.00000000E+00*_A0069);
    _uv0069 = (_point0069 - _a0069*VARsinangle)/VARcosangle;
    _negate0091 = float((_a0069 < 0.00000000E+00));
    _x0091 = abs(_a0069);
    _ret0091 = -1.87292993E-02*_x0091;
    _ret0091 = _ret0091 + 7.42610022E-02;
    _ret0091 = _ret0091*_x0091;
    _ret0091 = _ret0091 - 2.12114394E-01;
    _ret0091 = _ret0091*_x0091;
    _ret0091 = _ret0091 + 1.57072902E+00;
    _a0095 = 1.00000000E+00 - _x0091;
    _TMP20 = inversesqrt(_a0095);
    _TMP21 = 1.00000000E+00/_TMP20;
    _ret0091 = _ret0091*_TMP21;
    _ret0091 = _ret0091 - 2.00000000E+00*_negate0091*_ret0091;
    _TMP14 = _negate0091*3.14159298E+00 + _ret0091;
    _a0099 = 5.50000012E-01*_TMP14;
    _TMP15 = abs(_a0099);
    _r0069 = max(_TMP15, 9.99999975E-06);
    _a0103 = _r0069/5.50000012E-01;
    _TMP16 = sin(_a0103);
    _TMP3 = (_uv0069*_r0069)/_TMP16;
    _xy21 = ((_TMP3 + vec2( 5.00000000E-01, 5.00000000E-01))*InputSize)/TextureSize;
    _TMP4 = COMPAT_TEXTURE(Texture, _xy21);
    _r0107 = _TMP4.x*_RGB_to_YIQ[0];
    _r0107 = _r0107 + _TMP4.y*_RGB_to_YIQ[1];
    _r0107 = _r0107 + _TMP4.z*_RGB_to_YIQ[2];
    _xyoffset2 = 1.50000000E+00*vec2((1.00000000E+00 - _r0107.x)/TextureSize.x, 0.00000000E+00);
    _TMP6 = COMPAT_TEXTURE(Texture, _xy2);
    _leftimage = vec4(_TMP6.x, _TMP6.y, _TMP6.z, _r0067.x);
    _c0111 = _xy2 - _xyoffset;
    _leftoffset = COMPAT_TEXTURE(Texture, _c0111);
    _r0113 = _leftoffset.x*_RGB_to_YIQ[0];
    _r0113 = _r0113 + _leftoffset.y*_RGB_to_YIQ[1];
    _r0113 = _r0113 + _leftoffset.z*_RGB_to_YIQ[2];
    _leftoffset.w = _r0113.x;
    _TMP8 = COMPAT_TEXTURE(Texture, _xy21);
    _rightimage = vec4(_TMP8.x, _TMP8.y, _TMP8.z, _r0107.x);
    _c0117 = _xy21 + _xyoffset2;
    _rightoffset = COMPAT_TEXTURE(Texture, _c0117);
    _r0119 = _rightoffset.x*_RGB_to_YIQ[0];
    _r0119 = _r0119 + _rightoffset.y*_RGB_to_YIQ[1];
    _r0119 = _r0119 + _rightoffset.z*_RGB_to_YIQ[2];
    _rightoffset.w = _r0119.x;
    _left = _leftimage + _r0113.x*(_leftoffset - _leftimage);
    _right = _rightimage + _r0119.x*(_rightoffset - _rightimage);
    _OUT._color1 = _left + _right;
    FragColor = _OUT._color1;
    return;
} 
#endif
