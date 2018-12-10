#version 330



// CSci-4611 Art Render
// GUANGYU YAN

// INPUTS:

// uniform = variables passed in from the C++ code
// model and camera matrices:
uniform mat4 model_view_matrix;
uniform mat4 normal_matrix;
uniform mat4 proj_matrix;

// properties of the light:
uniform vec3 light_in_eye_space;
uniform vec4 Ia, Id, Is;

// properties of the material we are lighting:
uniform vec4 ka, kd, ks;
uniform float s;


// these variables come from the mesh data stored in buffers in gfx card memory
layout(location = 0) in vec3 vertex;
layout(location = 1) in vec3 normal;


// OUTPUT:

// for Gouraud shading, the key output of the vertex shader is the color
// calculated based on lighting this vertex
out vec4 color;

// Adding texture coordinates for mesh
out vec2 texture_coords;

void main() {

    // vertex position in "eye space"
    vec3 v = (model_view_matrix * vec4(vertex, 1)).xyz;

    // unit vector from the vertex to the light
    vec3 l = normalize(light_in_eye_space - v);

    // unit vector from the vertex to the eye point, which is at 0,0,0 in "eye space"
    vec3 e = normalize(-v);

    // normal transformed into "eye space"
    vec3 n = normalize((normal_matrix * vec4(normal, 0)).xyz);

    // halfway vector
    vec3 h = normalize(l + e);


    // calculate color using the light intensity equation
    color = ka * Ia +
            kd * Id * max(dot(n, l), 0) +
            ks * Is * pow(max(dot(h, n), 0), s);

    vec3 vertex_on_unit_sphere = normalize(vertex);
    texture_coords.s = asin(vertex_on_unit_sphere.x) / 3.14 + 0.5;
    texture_coords.t = 1.0 - (asin(vertex_on_unit_sphere.y) / 3.14 + 0.5);

    // do the standard projection of the incoming vertex
    gl_Position = proj_matrix * model_view_matrix * vec4(vertex,1);
}
