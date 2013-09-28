# $OpenBSD: Makefile,v 1.18 2013/09/28 08:51:17 ajacoutot Exp $

BROKEN-powerpc=	clang dumps core

SHARED_ONLY=	Yes

COMMENT=	code assistance for Gedit

GNOME_PROJECT=	gedit-code-assistance
GNOME_VERSION=	0.2.0
REVISION=	5

CATEGORIES=	editors devel

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/gettext \
		lang/clang \
		lang/python \
		x11/gnome

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += cairo cairo-gobject clang dbus-1 expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gee gio-2.0 girepository-1.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-3 gtksourceview-3.0 harfbuzz
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre peas-1.0
WANTLIB += peas-gtk-1.0 pixman-1 png pthread pthread-stubs stdc++
WANTLIB += xcb xcb-render xcb-shm xml2 z

LIB_DEPENDS=	devel/libgee06 \
		devel/libpeas \
		devel/llvm>=${MODCLANG_VERSION} \
		x11/gtksourceview3

MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}
MODGNOME_TOOLS=	gi vala

BUILD_DEPENDS=	x11/gnome/gedit \
		devel/py-gobject3${MODPY_FLAVOR}

RUN_DEPENDS=	x11/gnome/gedit \
		devel/py-gobject3${MODPY_FLAVOR}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/backends/c/gcp-c-compile-args.c

post-install:
	rm ${PREFIX}/lib/gedit/plugins/*.{a,la}

.include <bsd.port.mk>
