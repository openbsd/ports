#include <GL/glx.h>
#include <stdio.h>
#include <string.h>

int
main(int argc, char *argv[])
{
	Display        *dpy;
	int 		scrnum = 0;
	Window 		win;
	XSetWindowAttributes attr;
	Window 		root;
	GLXContext 	ctx = NULL;
	XVisualInfo    *visinfo;
	unsigned int 	vendor_id = 0x0000;
	unsigned int 	device_id = 0x0000;
	int attribSingle[] = {
	    GLX_RGBA,
	    GLX_RED_SIZE, 1,
	    GLX_GREEN_SIZE, 1,
	    GLX_BLUE_SIZE, 1,
	    None };
	int attribDouble[] = {
	    GLX_RGBA,
	    GLX_RED_SIZE, 1,
	    GLX_GREEN_SIZE, 1,
	    GLX_BLUE_SIZE, 1,
	    GLX_DOUBLEBUFFER,
	    None };

	dpy = XOpenDisplay(NULL);
	if (!dpy)
		goto exit;

	root = RootWindow(dpy, scrnum);

	visinfo = glXChooseVisual(dpy, scrnum, attribSingle);
	if (!visinfo)
		visinfo = glXChooseVisual(dpy, scrnum, attribDouble);
	if (visinfo)
		ctx = glXCreateContext(dpy, visinfo, NULL, False);

	if (!ctx)
		goto exit0;

	attr.background_pixel = attr.border_pixel = 0;
	attr.colormap = XCreateColormap(dpy, root, visinfo->visual, AllocNone);
	attr.event_mask = StructureNotifyMask | ExposureMask;
	win = XCreateWindow(dpy, root, 0, 0, 100, 100,
			    0, visinfo->depth, InputOutput,
			    visinfo->visual, CWBackPixel | CWBorderPixel | CWColormap | CWEventMask,
			    &attr);

	if (glXMakeCurrent(dpy, win, ctx)) {
		const char     *glxExtensions = glXQueryExtensionsString(dpy, scrnum);
		unsigned int 	v [3];
		PFNGLXQUERYCURRENTRENDERERINTEGERMESAPROC queryInteger;
		queryInteger = (PFNGLXQUERYCURRENTRENDERERINTEGERMESAPROC)
			glXGetProcAddressARB((const GLubyte *)
				      "glXQueryCurrentRendererIntegerMESA");

		if (!glXQueryVersion(dpy, NULL, NULL)) {
			goto exit1;
		}
		if (strstr(glxExtensions, "GLX_MESA_query_renderer")) {
			queryInteger(GLX_RENDERER_VENDOR_ID_MESA, v);
			vendor_id = *v;
			queryInteger(GLX_RENDERER_DEVICE_ID_MESA, v);
			device_id = *v;
		}
	}
exit1:
	XDestroyWindow(dpy, win);
	glXDestroyContext(dpy, ctx);
exit0:
	XFree(visinfo);
	XSync(dpy, 1);
exit:
	printf("OPENBSD_GPU_VENDOR='0x%04x';\n", vendor_id);
	printf("export OPENBSD_GPU_VENDOR;\n");
	printf("OPENBSD_GPU_DEVICE='0x%04x';\n", device_id);
	printf("export OPENBSD_GPU_DEVICE;\n");

	XCloseDisplay(dpy);
	return 0;
}
