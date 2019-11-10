# $OpenBSD: Makefile,v 1.233 2019/11/10 21:44:07 ajacoutot Exp $

COMMENT-main=		multi-platform graphical toolkit
COMMENT-cups=		gtk+2 CUPS print backend

GNOME_VERSION=		2.24.32
GNOME_PROJECT=		gtk+

PKGNAME-main=		gtk+2-${GNOME_VERSION}
PKGNAME-cups=		gtk+2-cups-${GNOME_VERSION}

REVISION-main=		8
REVISION-cups=		4

CATEGORIES=		x11 devel

SHARED_LIBS +=  gdk-x11-2.0          2400.0   # 2400.32
SHARED_LIBS +=  gtk-x11-2.0          2400.0   # 2400.32
SHARED_LIBS +=  gailutil             26.0     # 18.1

HOMEPAGE=		http://www.gtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo expat ffi fontconfig
WANTLIB += freetype gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 harfbuzz m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += xcb xcb-render xcb-shm z iconv intl fribidi

WANTLIB-main += ${WANTLIB} c

WANTLIB-cups += ${WANTLIB}
WANTLIB-cups += avahi-client avahi-common cups dbus-1 gdk-x11-2.0 gmp fribidi
WANTLIB-cups += gnutls gtk-x11-2.0 hogweed idn2 nettle p11-kit tasn1 unistring

MULTI_PACKAGES=		-main -cups

MODULES=		lang/python \
			x11/gnome

DEBUG_PACKAGES=		${BUILD_PACKAGES}

LIB_DEPENDS-main=	devel/atk \
			devel/pango \
			graphics/gdk-pixbuf2

RUN_DEPENDS-main=	${RUN_DEPENDS} \
			x11/hicolor-icon-theme

# convenient dependency to prevent hunting what needs what:
# some apps need more icons than the stock ones
# some apps needs the svg version of the icon (librsvg pulled in)
RUN_DEPENDS-main +=	x11/gnome/icon-theme-symbolic # pulls x11/gnome/icon-theme

LIB_DEPENDS-cups=	print/cups,-libs \
			${BASE_PKGPATH},-main=${GNOME_VERSION}

MODPY_BUILDDEP=		No
MODPY_RUNDEP=		No
MODPY_ADJ_FILES=	gtk/gtk-builder-convert

MODGNOME_TOOLS=		gobject-introspection gtk-update-icon-cache

MODGNOME_CPPFLAGS=	-I${X11BASE}/include/freetype2

CFLAGS +=		 -Wno-expansion-to-defined

TEST_IS_INTERACTIVE=	x11

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-xinput=xfree

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/gtk+2

post-install:
# sync "gtk-icon-theme-name" with x11/gnome/themes-standard/files/gtkrc
	${INSTALL_DATA} ${FILESDIR}/gtkrc \
		${PREFIX}/share/gtk-2.0
	rm ${PREFIX}/lib/gtk-2.0/2.10.0/{engines,immodules,printbackends}/*.{a,la}
	rm ${PREFIX}/lib/gtk-2.0/modules/*.{a,la}
# built as a subpackage of x11/gtk+3
	rm ${PREFIX}/bin/gtk-update-icon-cache

.include <bsd.port.mk>
