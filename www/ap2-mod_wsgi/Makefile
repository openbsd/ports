COMMENT=	Python WSGI compliant interface module for Apache2

CATEGORIES=	www

V=		6.0.6
DISTNAME=	mod_wsgi-$V
PKGNAME=	ap2-${DISTNAME}

SITES=		https://github.com/GrahamDumpleton/mod_wsgi/releases/download/${DISTNAME}/
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
