# $OpenBSD: Makefile,v 1.10 2013/03/11 11:46:10 espie Exp $

BROKEN-powerpc=	clang dumps core

SHARED_ONLY=	Yes

COMMENT=	code assistance for Gedit

GNOME_PROJECT=	gedit-code-assistance
GNOME_VERSION=	0.1.5
REVISION =	0

CATEGORIES=	editors devel

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/gettext \
		lang/clang \
		lang/python \
		x11/gnome

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += atk-bridge-2.0 atspi cairo cairo-gobject dbus-1 drm
WANTLIB += expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gee gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 gtksourceview-3.0 harfbuzz icudata
WANTLIB += icule icuuc clang m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre peas-1.0 peas-gtk-1.0 pixman-1 png pthread pthread-stubs
WANTLIB += stdc++ xcb xcb-render xcb-shm xml2 z

LIB_DEPENDS=	devel/libgee06 \
		devel/libpeas \
		devel/llvm>=${MODCLANG_VERSION} \
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
