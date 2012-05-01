# $OpenBSD: Makefile,v 1.1.1.1 2012/05/01 07:38:47 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	code assistance for Gedit

GNOME_PROJECT=	gedit-code-assistance
GNOME_VERSION=	0.1.3

CATEGORIES=	editors devel

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext \
		x11/gnome

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo cairo-gobject
WANTLIB += drm expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gee gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 gtksourceview-3.0 libclang m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre peas-1.0 peas-gtk-1.0
WANTLIB += pixman-1 png pthread pthread-stubs stdc++ xcb xcb-render
WANTLIB += xcb-shm xml2 z

LIB_DEPENDS=	devel/libgee06 \
		devel/libpeas \
		devel/llvm \
		x11/gtksourceview3

BUILD_DEPENDS=	lang/vala \
		x11/gnome/gedit>=3.2.0
RUN_DEPENDS=	x11/gnome/gedit>=3.2.0

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/backends/c/gcp-c-compile-args.c

.include <bsd.port.mk>
