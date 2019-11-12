#version 330 core
out vec4 color;
in vec3 vertex_normal;
in vec3 vertex_pos;
in vec2 vertex_tex;
uniform vec3 campos;

uniform sampler2D tex;
uniform sampler2D tex2;

void main()
{
//vec3 n = normalize(vertex_normal);
//vec3 lp=vec3(10,-20,-100);
//vec3 ld = normalize(lp - vertex_pos);
//float diffuse = dot(n,ld);

//vec4 baseColor = texture(tex, vertex_tex);
//color.rgb = baseColor.rgb * (0.2 + diffuse*0.8);
//color.a = baseColor.a;

color = texture(tex, 0.75 + vertex_tex * 0.25); //pick last square in 4x4 picture
color.a = (color.r + color.g + color.b)/3;
//color.a = pow(color.a, 20);
}