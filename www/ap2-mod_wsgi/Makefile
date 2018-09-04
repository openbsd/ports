# $OpenBSD: Makefile,v 1.7 2018/09/04 12:46:24 espie Exp $

COMMENT=	Python WSGI compliant interface module for Apache2

PKGNAME=	ap2-mod_wsgi-${GH_TAGNAME}
REVISION=	0

CATEGORIES=	www

GH_ACCOUNT=	GrahamDumpleton
GH_PROJECT=	mod_wsgi
GH_TAGNAME=	4.6.4

# Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes

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
