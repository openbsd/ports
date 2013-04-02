# $OpenBSD: Makefile,v 1.164 2013/04/02 10:14:20 ajacoutot Exp $

COMMENT-main=		multi-platform graphical toolkit
COMMENT-guic=		gtk+ icon theme caching utility

GNOME_VERSION=		2.24.17
GNOME_PROJECT=		gtk+

PKGNAME-main=		gtk+2-${GNOME_VERSION}
PKGNAME-guic=		gtk-update-icon-cache-${GNOME_VERSION}

REVISION-main=		2
REVISION-guic=		0

CATEGORIES=		x11 devel

SHARED_LIBS +=  gdk-x11-2.0          2400.0   # 2400.0
SHARED_LIBS +=  gtk-x11-2.0          2400.0   # 2400.0
SHARED_LIBS +=  gailutil             26.0     # 18.1

HOMEPAGE=		http://www.gtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi gdk_pixbuf-2.0 gthread-2.0 m pcre z

MULTI_PACKAGES=		-main -guic

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

MODPY_BUILDDEP=		No

LIB_DEPENDS=		graphics/gdk-pixbuf2
RUN_DEPENDS=		x11/hicolor-icon-theme

RUN_DEPENDS-main=	${RUN_DEPENDS} \
			${MODPY_RUN_DEPENDS} \
			${BASE_PKGPATH},-guic

LIB_DEPENDS-main= 	${LIB_DEPENDS} \
			devel/pango \
			devel/atk \
			print/cups,-libs

WANTLIB-main += ${WANTLIB} c pthread glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB-main += gio-2.0 pango-1.0 pangocairo-1.0 pangoft2-1.0 atk-1.0
WANTLIB-main += X11 Xcomposite Xcursor Xdamage Xext Xfixes graphite2
WANTLIB-main += Xi Xinerama Xrandr Xrender cairo expat dbus-1 icuuc
WANTLIB-main += fontconfig freetype pixman-1 pthread-stubs xcb icule
WANTLIB-main += xcb-render xcb-shm png asn1 crypto cups gssapi krb5 ssl
WANTLIB-main += harfbuzz icudata avahi-client avahi-common

WANTLIB-guic += ${WANTLIB}
WANTLIB-guic += c gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 png pthread

MODPY_BUILDDEP=		No
MODPY_RUNDEP=		No
MODPY_ADJ_FILES=	gtk/gtk-builder-convert

MODGNOME_TOOLS=		goi
MODGNOME_CPPFLAGS=	-I${X11BASE}/include/freetype2 -I${LOCALBASE}/include/libpng

TEST_IS_INTERACTIVE=	x11

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-xinput=xfree

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/gtk+2

.include <bsd.port.mk>
