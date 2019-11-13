# ArtRender

## Abstract
GLSL shaders make it possible for us to create some fantastic lighting effects in real-time computer graphics. These range from photorealistic lighting to artistically inspired non-photorealistic rendering. In this project, with the support of my Professor Daniel Keefe, I implemented a GLSL shader program that can produce Phong shading, Artsy shading, and Gouraud shading.

## Design Process
With the support of my professor, we finished the main GUI and put several 3D models into the application. Then, I did a shader program that calculates ambient, diffuse, and specular lighting using per-vertex(Gouraud) shading. With the same lighting model, I implemented a shader program that performs all the calculations to calculate the Blinn-Phong (per-pixel shading) lighting model for each pixel accurately. Then I completed the artsy fragment shader to compute the per-pixel toon shading, using the “diffuseRamp.png” and “specularRamp.png” textures to control the lighting. The final step was to finish the outline vertex shader to draw a black outline for the silhouette edges of the mesh when rendering in “artsy” mode.

Vimeo Link: https://vimeo.com/305440450
