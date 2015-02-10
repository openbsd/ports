# $OpenBSD: Makefile,v 1.48 2015/02/10 07:43:11 ajacoutot Exp $

COMMENT=		glib bindings for dbus message system

DISTNAME=		dbus-glib-0.104
EPOCH=			0

SHARED_LIBS +=  dbus-glib-1          4.4      # 4.2

CATEGORIES=		x11

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/DBusBindings/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c dbus-1 expat ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += pcre pthread z

MASTER_SITES=		http://dbus.freedesktop.org/releases/dbus-glib/

MODULES=		devel/gettext
LIB_DEPENDS=		devel/glib2 \
			x11/dbus

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--with-test-socket-dir=${WRKDIR}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/dbus-glib

.include <bsd.port.mk>
