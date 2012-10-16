# $OpenBSD: Makefile,v 1.6 2012/10/16 18:23:23 jasper Exp $

BROKEN-powerpc=	clang dumps core

SHARED_ONLY=	Yes

COMMENT=	code assistance for Gedit

GNOME_PROJECT=	gedit-code-assistance
GNOME_VERSION=	0.1.4

CATEGORIES=	editors devel

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext \
		lang/clang \
		lang/python \
		x11/gnome

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo cairo-gobject
WANTLIB += drm expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gee gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 gtksourceview-3.0 libclang m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre peas-1.0 peas-gtk-1.0
WANTLIB += pixman-1 png pthread pthread-stubs stdc++ xcb xcb-render
WANTLIB += xcb-shm xml2 z
WANTLIB += ICE SM atk-bridge-2.0 atspi dbus-1 harfbuzz icudata
WANTLIB += icule icuuc

LIB_DEPENDS=	devel/libgee06 \
		devel/libpeas \
		devel/llvm>=${MODCLANG_VERSION}p9 \
		x11/gtksourceview3

MODGNOME_TOOLS=	goi

BUILD_DEPENDS=	lang/vala \
		x11/gnome/gedit>=3.6.0
RUN_DEPENDS=	x11/gnome/gedit>=3.6.0

pre-configure:
	${SUBST_CMD} ${WRKSRC}/backends/c/gcp-c-compile-args.c

post-install:
	rm ${PREFIX}/lib/gedit/plugins/*.{a,la}

.include <bsd.port.mk>
