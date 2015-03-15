# $OpenBSD: Makefile,v 1.203 2015/03/15 08:41:35 ajacoutot Exp $

COMMENT-main=		multi-platform graphical toolkit
COMMENT-guic=		gtk+ icon theme caching utility

GNOME_VERSION=		2.24.27
GNOME_PROJECT=		gtk+

PKGNAME-main=		gtk+2-${GNOME_VERSION}
PKGNAME-guic=		gtk-update-icon-cache-${GNOME_VERSION}

CATEGORIES=		x11 devel

SHARED_LIBS +=  gdk-x11-2.0          2400.0   # 2400.26
SHARED_LIBS +=  gtk-x11-2.0          2400.0   # 2400.26
SHARED_LIBS +=  gailutil             26.0     # 18.1

HOMEPAGE=		http://www.gtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi gdk_pixbuf-2.0 m pcre png z

MULTI_PACKAGES=		-main -guic

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

LIB_DEPENDS=		graphics/gdk-pixbuf2
RUN_DEPENDS=		x11/hicolor-icon-theme

RUN_DEPENDS-main=	${RUN_DEPENDS} \
			${MODPY_RUN_DEPENDS} \
			${BASE_PKGPATH},-guic

LIB_DEPENDS-main= 	${LIB_DEPENDS} \
			devel/pango \
			devel/atk \
			print/cups,-libs

# convenient dependency to prevent hunting what needs what:
# some apps need more icons than the stock ones
# some apps needs the svg version of the icon (librsvg pulled in)
RUN_DEPENDS-main +=	x11/gnome/icon-theme-symbolic # pulls x11/gnome/icon-theme

WANTLIB-main += ${WANTLIB}
WANTLIB-main += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB-main += Xrandr Xrender atk-1.0 avahi-client avahi-common c
WANTLIB-main += cairo cups dbus-1 expat fontconfig freetype
WANTLIB-main += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB-main += gthread-2.0 harfbuzz pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB-main += pixman-1 pthread pthread-stubs xcb xcb-render xcb-shm
WANTLIB-main += gmp gnutls hogweed nettle p11-kit tasn1

WANTLIB-guic += ${WANTLIB}
WANTLIB-guic += c gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 pthread

MODPY_BUILDDEP=		No
MODPY_RUNDEP=		No
MODPY_ADJ_FILES=	gtk/gtk-builder-convert

MODGNOME_TOOLS +=	gobject-introspection

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

.include <bsd.port.mk>
