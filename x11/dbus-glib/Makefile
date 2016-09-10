# $OpenBSD: Makefile,v 1.52 2016/09/10 13:29:00 ajacoutot Exp $

COMMENT=		glib bindings for dbus message system

DISTNAME=		dbus-glib-0.108
EPOCH=			0

SHARED_LIBS +=  dbus-glib-1          4.4      # 5.3

CATEGORIES=		x11

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/DBusBindings/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c dbus-1 expat ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += iconv intl pcre pthread z

MASTER_SITES=		http://dbus.freedesktop.org/releases/dbus-glib/

LIB_DEPENDS=		devel/glib2 \
			x11/dbus

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-test-socket-dir=${WRKDIR}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/dbus-glib

.include <bsd.port.mk>
