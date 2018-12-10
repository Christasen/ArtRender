#version 330


// CSci-4611 Art Render
// GUANGYU YAN

uniform mat4 model_view_matrix;
uniform mat4 normal_matrix;
uniform mat4 proj_matrix;
uniform float thickness;

layout(location = 0) in vec3 vertex;
layout(location = 1) in vec3 normal;
layout(location = 2) in vec3 left_normal;
layout(location = 3) in vec3 right_normal;

void main() {
    vec3 new_vertex = vertex;

    vec3 to_eye = -(model_view_matrix * vec4(vertex, 1)).xyz;

    vec3 LeftNormal = (normal_matrix * vec4(left_normal, 0)).xyz;
    vec3 RightNormal = (normal_matrix * vec4(right_normal, 0)).xyz;

    if ((dot(to_eye, LeftNormal) * dot(to_eye, RightNormal)) < 0.0)
        new_vertex = new_vertex + thickness * normal;

    gl_Position = proj_matrix * model_view_matrix * vec4(new_vertex, 1);
}
