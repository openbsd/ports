COMMENT=	enhanced HTTPS support for httplib and urllib2

MODPY_DISTV=	0.5.1
REVISION=	5
MODPY_PI_DIR=	n/ndg-httpsclient
DISTNAME=	ndg_httpsclient-${MODPY_DISTV}
PKGNAME=	${MODPY_PY_PREFIX}ndg-httpsclient-${MODPY_DISTV}

CATEGORIES=	www

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD =	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	security/py-openssl \
		devel/py-asn1

# tests require a running listener;
# cd ${WRKSRC}/ndg/httpsclient/test; scripts/openssl_https_server.sh

.include <bsd.port.mk>
