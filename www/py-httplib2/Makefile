COMMENT=	Python HTTP client library

MODPY_DISTV=	0.22.0
DISTNAME=	httplib2-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	1

CATEGORIES=	www net

HOMEPAGE=	https://github.com/httplib2/httplib2

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

RUN_DEPENDS=	devel/py-parsing
TEST_DEPENDS=	devel/py-test-cov \
		devel/py-test-timeout

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

post-install:
	ln -sf /etc/ssl/cert.pem \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/httplib2/cacerts.txt

.include <bsd.port.mk>
