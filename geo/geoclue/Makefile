# $OpenBSD: Makefile,v 1.28 2017/11/21 00:13:01 naddy Exp $

COMMENT=		modular geoinformation service on top of D-Bus

DISTNAME=		geoclue-0.12.99
REVISION=		6
SHARED_LIBS +=  geoclue              1.1      # .0.0
CATEGORIES=		geo devel

HOMEPAGE=		http://geoclue.freedesktop.org/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  c dbus-1 dbus-glib-1 ffi gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gps iconv intl lzma m pcre pthread soup-2.4
WANTLIB += soup-gnome-2.4 sqlite3 xml2 z

MASTER_SITES=		http://freedesktop.org/~hadess/

MODULES=		devel/dconf

BUILD_DEPENDS =		textproc/libxslt
LIB_DEPENDS =		devel/libsoup \
			misc/gpsd \
			x11/dbus-glib

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-gtk \
			--disable-connman
CONFIGURE_ENV=          CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
