COMMENT=	Python WSGI compliant interface module for Apache2

CATEGORIES=	www

GH_ACCOUNT=	GrahamDumpleton
GH_PROJECT=	mod_wsgi
GH_TAGNAME=	5.0.2
PKGNAME=	ap2-${DISTNAME}

HOMEPAGE=	https://modwsgi.readthedocs.io/

# Apache License 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += iconv intl m pthread ${MODPY_WANTLIB} util

MODULES=	lang/python

LIB_DEPENDS=	${MODPY_LIB_DEPENDS}

RUN_DEPENDS=	www/apache-httpd
BUILD_DEPENDS=	www/apache-httpd \
		devel/py-setuptools

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-apxs=${LOCALBASE}/sbin/apxs2 \
		--with-python=${MODPY_BIN}

NO_TEST=	Yes

.include <bsd.port.mk>
