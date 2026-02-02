COMMENT=	URL normalization for Python

MODPY_DISTV=	2.2.1

DISTNAME=	url_normalize-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/_/-/}

CATEGORIES=	www

HOMEPAGE=	https://github.com/niksite/url-normalize

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	net/py-idna

TEST_DEPENDS=	devel/py-test-cov

.include <bsd.port.mk>
