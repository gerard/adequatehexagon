#version 110

uniform float fade_factor;


void main()
{
    gl_FragColor = mix(
        vec4(1.0, 0.0, 0.0, 1.0),
        vec4(0.0, 1.0, 0.0, 1.0),
        fade_factor
    );
}
