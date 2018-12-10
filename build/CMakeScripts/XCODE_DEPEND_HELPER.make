# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.a5-artrender.Debug:
/Users/thomas/Desktop/CSCI\ 4611/repo-shenx683/dev/a5-artrender/build/Debug/a5-artrender:\
	/Users/thomas/Desktop/CSCI\ 4611/repo-shenx683/lib/MinGfx-1.0/libMinGfxd.a\
	/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL.tbd\
	/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL.tbd\
	/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL.tbd\
	/Users/thomas/Desktop/CSCI\ 4611/repo-shenx683/lib/libnanogui.dylib
	/bin/rm -f /Users/thomas/Desktop/CSCI\ 4611/repo-shenx683/dev/a5-artrender/build/Debug/a5-artrender


PostBuild.a5-artrender.Release:
/Users/thomas/Desktop/CSCI\ 4611/repo-shenx683/dev/a5-artrender/build/Release/a5-artrender:\
	/Users/thomas/Desktop/CSCI\ 4611/repo-shenx683/lib/MinGfx-1.0/libMinGfxd.a\
	/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL.tbd\
	/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL.tbd\
	/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL.tbd\
	/Users/thomas/Desktop/CSCI\ 4611/repo-shenx683/lib/libnanogui.dylib
	/bin/rm -f /Users/thomas/Desktop/CSCI\ 4611/repo-shenx683/dev/a5-artrender/build/Release/a5-artrender


PostBuild.a5-artrender.MinSizeRel:
/Users/thomas/Desktop/CSCI\ 4611/repo-shenx683/dev/a5-artrender/build/MinSizeRel/a5-artrender:\
	/Users/thomas/Desktop/CSCI\ 4611/repo-shenx683/lib/MinGfx-1.0/libMinGfxd.a\
	/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL.tbd\
	/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL.tbd\
	/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL.tbd\
	/Users/thomas/Desktop/CSCI\ 4611/repo-shenx683/lib/libnanogui.dylib
	/bin/rm -f /Users/thomas/Desktop/CSCI\ 4611/repo-shenx683/dev/a5-artrender/build/MinSizeRel/a5-artrender


PostBuild.a5-artrender.RelWithDebInfo:
/Users/thomas/Desktop/CSCI\ 4611/repo-shenx683/dev/a5-artrender/build/RelWithDebInfo/a5-artrender:\
	/Users/thomas/Desktop/CSCI\ 4611/repo-shenx683/lib/MinGfx-1.0/libMinGfxd.a\
	/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL.tbd\
	/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL.tbd\
	/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL.tbd\
	/Users/thomas/Desktop/CSCI\ 4611/repo-shenx683/lib/libnanogui.dylib
	/bin/rm -f /Users/thomas/Desktop/CSCI\ 4611/repo-shenx683/dev/a5-artrender/build/RelWithDebInfo/a5-artrender




# For each target create a dummy ruleso the target does not have to exist
/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL.tbd:
/Users/thomas/Desktop/CSCI\ 4611/repo-shenx683/lib/MinGfx-1.0/libMinGfxd.a:
/Users/thomas/Desktop/CSCI\ 4611/repo-shenx683/lib/libnanogui.dylib:
