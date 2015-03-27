# $OpenBSD: Makefile,v 1.205 2015/03/27 08:08:50 ajacoutot Exp $

COMMENT-main=		multi-platform graphical toolkit

GNOME_VERSION=		2.24.27
GNOME_PROJECT=		gtk+

PKGNAME-main=		gtk+2-${GNOME_VERSION}

REVISION-main=		0

CATEGORIES=		x11 devel

SHARED_LIBS +=  gdk-x11-2.0          2400.0   # 2400.26
SHARED_LIBS +=  gtk-x11-2.0          2400.0   # 2400.26
SHARED_LIBS +=  gailutil             26.0     # 18.1

HOMEPAGE=		http://www.gtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 avahi-client avahi-common c
WANTLIB += cairo cups dbus-1 expat ffi fontconfig freetype gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0
WANTLIB += graphite2 gthread-2.0 harfbuzz hogweed m nettle p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs tasn1 xcb xcb-render xcb-shm
WANTLIB += z

MULTI_PACKAGES=		-main

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

LIB_DEPENDS=		devel/atk \
			devel/pango \
			graphics/gdk-pixbuf2 \
			print/cups,-libs

RUN_DEPENDS=		x11/hicolor-icon-theme

# convenient dependency to prevent hunting what needs what:
# some apps need more icons than the stock ones
# some apps needs the svg version of the icon (librsvg pulled in)
RUN_DEPENDS +=		x11/gnome/icon-theme-symbolic # pulls x11/gnome/icon-theme

MODPY_BUILDDEP=		No
MODPY_RUNDEP=		No
MODPY_ADJ_FILES=	gtk/gtk-builder-convert

MODGNOME_TOOLS=		gobject-introspection gtk-update-icon-cache

MODGNOME_CPPFLAGS=	-I${X11BASE}/include/freetype2

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
