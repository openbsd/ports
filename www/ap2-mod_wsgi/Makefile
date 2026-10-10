COMMENT=	Python WSGI compliant interface module for Apache2

DISTNAME=	mod_wsgi-6.1.0
PKGNAME=	ap2-${DISTNAME}

CATEGORIES=	www

# https://modwsgi.readthedocs.io/en/latest/release-notes.html
HOMEPAGE=	https://modwsgi.readthedocs.io/

SITES=		https://github.com/GrahamDumpleton/mod_wsgi/releases/download/${DISTNAME}/

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
