# $OpenBSD: Makefile,v 1.10 2019/07/12 20:50:17 sthen Exp $

COMMENT=	Python WSGI compliant interface module for Apache2

PKGNAME=	ap2-mod_wsgi-${GH_TAGNAME}
REVISION=	0

CATEGORIES=	www

GH_ACCOUNT=	GrahamDumpleton
GH_PROJECT=	mod_wsgi
GH_TAGNAME=	4.6.5

HOMEPAGE=	https://modwsgi.readthedocs.io/

# Apache License 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += m pthread ${MODPY_WANTLIB} util

MODULES=	lang/python

LIB_DEPENDS=	${MODPY_LIB_DEPENDS}

RUN_DEPENDS=	www/apache-httpd
BUILD_DEPENDS=	www/apache-httpd

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-apxs=${LOCALBASE}/sbin/apxs2 \
		--with-python=${MODPY_BIN}

NO_TEST=	Yes

.include <bsd.port.mk>
