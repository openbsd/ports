# $OpenBSD: Makefile,v 1.1.1.1 2014/01/29 14:06:07 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	Python WSGI compliant interface module for Apache2

DISTNAME=	mod_wsgi-3.4
PKGNAME=	ap2-${DISTNAME}

CATEGORIES=	www

HOMEPAGE=	https://code.google.com/p/modwsgi/

# Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m pthread ${MODPY_WANTLIB} util

MASTER_SITES=	http://modwsgi.googlecode.com/files/

MODULES=	lang/python

RUN_DEPENDS=	www/apache-httpd
BUILD_DEPENDS=	www/apache-httpd

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-apxs=${LOCALBASE}/sbin/apxs2 \
		--with-python=${MODPY_BIN}

NO_TEST=	Yes

.include <bsd.port.mk>
