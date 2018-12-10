#version 330

// CSci-4611 Art Render
// GUANGYU YAN



in vec3 position_in_eye_space;
in vec3 normal_in_eye_space;

out vec4 color;

uniform vec3 light_in_eye_space;
uniform vec4 Ia, Id, Is;

uniform vec4 ka, kd, ks;
uniform float s;

uniform sampler2D diffuse_ramp;
uniform sampler2D specular_ramp;


void main() {
    // color = vec4(0,0,0,1);

    // vertex position in "eye space"
    vec3 v = vec4(position_in_eye_space, 1).xyz;

    // unit vector from the vertex to the light
    vec3 l = normalize(light_in_eye_space - v);

    // unit vector from the vertex to the eye point, which is at 0,0,0 in "eye space"
    vec3 e = normalize(-v);

    // normal transformed into "eye space"
    vec3 n = normalize(vec4(normal_in_eye_space , 0).xyz);

    // halfway vector
    vec3 h = normalize(l + e);

    // calculate color using the light intensity equation
    vec2 diffuse = vec2(clamp(0.5 * dot(n, l) + 0.5, 0, 1), 0);

    vec2 specular = vec2(pow(max(dot(h, n), 0), s), 0);
    color = ka * Ia +
            kd * Id * texture(diffuse_ramp, diffuse) +
            texture(specular_ramp, specular) ;
}
