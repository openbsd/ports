COMMENT=	Python HTTP client library

MODPY_DISTV=	0.31.2
DISTNAME=	httplib2-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	www net

HOMEPAGE=	https://github.com/httplib2/httplib2

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-parsing
TEST_DEPENDS=	devel/py-test-cov \
		devel/py-test-forked \
		devel/py-test-timeout \
		net/py-socks

post-install:
	ln -sf /etc/ssl/cert.pem \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/httplib2/cacerts.txt

.include <bsd.port.mk>
