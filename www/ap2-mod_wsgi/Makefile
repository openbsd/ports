# $OpenBSD: Makefile,v 1.12 2020/07/03 21:13:17 sthen Exp $

COMMENT=	Python WSGI compliant interface module for Apache2

PKGNAME=	ap2-mod_wsgi-${GH_TAGNAME}
REVISION=	0

CATEGORIES=	www

GH_ACCOUNT=	GrahamDumpleton
GH_PROJECT=	mod_wsgi
GH_TAGNAME=	4.7.1

HOMEPAGE=	https://modwsgi.readthedocs.io/

# Apache License 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += iconv intl m pthread ${MODPY_WANTLIB} util

MODULES=	lang/python

MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}

LIB_DEPENDS=	${MODPY_LIB_DEPENDS}

RUN_DEPENDS=	www/apache-httpd
BUILD_DEPENDS=	www/apache-httpd

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-apxs=${LOCALBASE}/sbin/apxs2 \
		--with-python=${MODPY_BIN}

NO_TEST=	Yes

.include <bsd.port.mk>
