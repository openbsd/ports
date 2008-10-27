# $OpenBSD: Makefile,v 1.6 2008/10/27 13:59:21 ajacoutot Exp $

COMMENT=	dbus bindings for Python

DISTNAME=	dbus-python-0.83.0
CATEGORIES=	x11
MASTER_SITES=	${HOMEPAGE}releases/dbus-python/

HOMEPAGE=	http://dbus.freedesktop.org/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB+=	glib-2.0 gobject-2.0 pcre

MODULES=	lang/python \
		devel/gettext

RUN_DEPENDS+=	${MODPY_EXPAT_DEPENDS}
LIB_DEPENDS+=	dbus-1.>=5::x11/dbus \
		dbus-glib-1::x11/dbus-glib

USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-html-docs
CONFIGURE_ENV+=	PYTHON=${MODPY_BIN}

NO_REGRESS=	Yes

.include <bsd.port.mk>
