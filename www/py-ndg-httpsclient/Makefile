# $OpenBSD: Makefile,v 1.8 2019/07/12 20:51:02 sthen Exp $

COMMENT=	enhanced HTTPS support for httplib and urllib2

MODPY_EGG_VERSION=	0.4.3
MODPY_PI_DIR=	n/ndg-httpsclient
DISTNAME=	ndg_httpsclient-${MODPY_EGG_VERSION}
PKGNAME=	${MODPY_PY_PREFIX}ndg-httpsclient-${MODPY_EGG_VERSION}
REVISION=	0

CATEGORIES=	www

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_SETUPTOOLS= Yes
MODPY_PI=	Yes

FLAVORS=	python3
FLAVOR?=

RUN_DEPENDS=	security/py-openssl${MODPY_FLAVOR} \
		devel/py-asn1${MODPY_FLAVOR}

post-install:
	mv ${PREFIX}/bin/ndg_httpclient \
	    ${PREFIX}/bin/ndg_httpclient${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
