# $OpenBSD: Makefile,v 1.1.1.1 2007/02/07 00:59:02 todd Exp $

SHARED_ONLY=	Yes

COMMENT=	"dbus bindings for Python"

DISTNAME=	dbus-python-0.80.1
CATEGORIES=	x11
MASTER_SITES=	${HOMEPAGE}releases/dbus-python/

HOMEPAGE=	http://dbus.freedesktop.org/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB+=	glib-2.0 gobject-2.0 iconv intl

MODULES=	lang/python

RUN_DEPENDS+=	${MODPY_EXPAT_DEPENDS}
LIB_DEPENDS+=	dbus-1.>=5::x11/dbus \
		dbus-glib-1::x11/dbus-glib

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV+=	PYTHON=${MODPY_BIN}

NO_REGRESS=	Yes

.include <bsd.port.mk>
