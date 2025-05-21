COMMENT=	snowball stemming library collection for Python

MODPY_DISTV=	3.0.1
DISTNAME=	snowballstemmer-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

# https://github.com/snowballstem/snowball
HOMEPAGE=	https://snowballstem.org/

CATEGORIES=	textproc

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	textproc/py-stemmer

NO_TEST=	Yes

.include <bsd.port.mk>
