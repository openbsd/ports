COMMENT=	scalable, non-blocking web server

MODPY_DISTV=	6.4.2
DISTNAME=	tornado-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	www

HOMEPAGE=	https://www.tornadoweb.org/

# Apache v2
PERMIT_PACKAGE=	Yes

WANTLIB=	pthread ${MODPY_WANTLIB}

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

TEST_DEPENDS=	devel/py-twisted \
		net/py-cares \
		net/py-curl

.include <bsd.port.mk>
