#version 110

attribute vec2 position;
uniform float fade_factor;

void main()
{
    float rot_factor = 3.141592 * 2.0 * fade_factor;
    mat2 rotation = mat2(
        vec2( cos(rot_factor), sin(rot_factor)),
        vec2(-sin(rot_factor), cos(rot_factor))
    );
    gl_Position = vec4(rotation * position, 0.0, 1.0);
}
