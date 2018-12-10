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


void main() {
    color = vec4(0,0,0,1);

    // vertex position in "eye space"
    vec3 v = vec4(position_in_eye_space, 1).xyz;

    // unit vector from the vertex to the light
    vec3 l = normalize(light_in_eye_space - v);

    // unit vector from the vertex to the eye point, which is at 0,0,0 in "eye space"
    vec3 e = normalize(-v);

    // normal transformed into "eye space"
    vec3 n = normalize(vec4(normal_in_eye_space, 0).xyz);

    // halfway vector
    vec3 h = normalize(l + e);


    // calculate color using the light intensity equation
    color = ka * Ia +
            kd * Id * max(dot(n, l), 0) +
            ks * Is * pow(max(dot(h, n), 0), s);
}
