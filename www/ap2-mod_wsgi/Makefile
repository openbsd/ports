# $OpenBSD: Makefile,v 1.5 2016/10/01 11:54:17 naddy Exp $

COMMENT=	Python WSGI compliant interface module for Apache2

DISTNAME=	mod_wsgi-3.4
PKGNAME=	ap2-${DISTNAME}
REVISION=	1

CATEGORIES=	www

HOMEPAGE=	https://code.google.com/p/modwsgi/

# Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m pthread ${MODPY_WANTLIB} util

MASTER_SITES=	${MASTER_SITE_GOOGLECODE:=modwsgi/}

MODULES=	lang/python

LIB_DEPENDS=	${MODPY_LIB_DEPENDS}

RUN_DEPENDS=	www/apache-httpd
BUILD_DEPENDS=	www/apache-httpd

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-apxs=${LOCALBASE}/sbin/apxs2 \
		--with-python=${MODPY_BIN}

NO_TEST=	Yes

.include <bsd.port.mk>
