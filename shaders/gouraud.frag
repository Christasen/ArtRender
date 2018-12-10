#version 330

// CSci-4611 Art Render
// GUANGYU YAN


// This color comes in from the output of the vertex shader stage.  The current
// fragment will lie somewhere within a triangle.  So, the vec4 that is passed
// in here is actually an interpolated version of the colors output by the 3
// vertex shader programs run for the 3 vertices of the triangle.
in vec4 color;

in vec2 texture_coords;

// The 2d texture (an image) that we bound to the shader in C++
uniform sampler2D surface_texture;

// All fragment shaders are required to output a vec4 color.
out vec4 final_color;


void main() {
    // For a Gouraud shader, there is nothing more to compute at this stage.  We
    // just output the input color.
    // Read the color for the pixel in surface_texture at texture coordinates.
    vec4 texture_color = texture(surface_texture, texture_coords);

    //final_color = color * texture_color;
    final_color = color;
}
