COMMENT=	RSS and Atom feeds parser written in Python

MODPY_DISTV=	6.0.14
DISTNAME=	feedparser-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	textproc

HOMEPAGE=	https://github.com/kurtmckee/feedparser

# BSD-2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	textproc/py-feedparser-sgmllib

TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH}

do-test:
	cd ${WRKSRC}; python tests/runtests.py

.include <bsd.port.mk>
