/** CSci-4611 Assignment 5:  Art Render
*/


// The file config.h.in is processed by cmake to produce config.h.  This
// replaces strings of the form "at"CMAKE_VARIABLE_NAME"at" with the value
// of the corresponding cmake variable, allowing us to pass directory paths
// and other information configured with cmake into our C++ code.


#define DATA_DIR_BUILD "/Users/Guangyu/Desktop/shared-upstream/dev/a5-artrender/data"
#define DATA_DIR_INSTALL "/Users/Guangyu/Desktop/shared-upstream/dev/a5-artrender/build/install/share/a5-artrender/data"

#define SHADERS_DIR_BUILD "/Users/Guangyu/Desktop/shared-upstream/dev/a5-artrender/shaders"
#define SHADERS_DIR_INSTALL "/Users/Guangyu/Desktop/shared-upstream/dev/a5-artrender/build/install/share/a5-artrender/shaders"
