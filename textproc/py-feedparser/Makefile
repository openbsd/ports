COMMENT=	RSS and Atom feeds parser written in Python

MODPY_DISTV=	6.0.12
DISTNAME=	feedparser-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	textproc

HOMEPAGE=	https://github.com/kurtmckee/feedparser

# BSD-2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

do-test:
	cd ${WRKSRC}; python3 tests/runtests.py

.include <bsd.port.mk>
