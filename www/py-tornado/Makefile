COMMENT=	scalable, non-blocking web server

MODPY_DISTV=	6.5.5
DISTNAME=	tornado-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	www

HOMEPAGE=	https://www.tornadoweb.org/

MAINTAINER=	Daniel Dickman <daniel@openbsd.org>

# Apache v2
PERMIT_PACKAGE=	Yes

WANTLIB=	pthread ${MODPY_WANTLIB}

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

TEST_DEPENDS=	devel/py-twisted \
		net/py-cares \
		net/py-curl

.include <bsd.port.mk>
