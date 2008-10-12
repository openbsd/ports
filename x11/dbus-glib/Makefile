# $OpenBSD: Makefile,v 1.10 2008/10/12 22:09:20 brad Exp $

COMMENT=	glib bindings for dbus message system

DISTNAME=	dbus-glib-0.76
SHARED_LIBS+=	dbus-glib-1	4.0
CATEGORIES=	x11

HOMEPAGE=	http://dbus.freedesktop.org/

# GPLv2+
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	expat c pthread pcre

MASTER_SITES=	${HOMEPAGE}releases/dbus-glib/

MODULES=	devel/gettext
LIB_DEPENDS=	dbus-1.>=7::x11/dbus \
		glib-2.0,gobject-2.0::devel/glib2

#CFLAGS+=	-I${LOCALBASE}/include -pthread

SEPARATE_BUILD=	simple
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

pre-build:
	@cp ${FILESDIR}/dbus-bus-introspect.xml ${WRKBUILD}/tools

.include <bsd.port.mk>
