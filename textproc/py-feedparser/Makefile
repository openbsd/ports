COMMENT=	RSS and Atom feeds parser written in Python

MODPY_EGG_VERSION=	6.0.11
DISTNAME=	feedparser-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	textproc

HOMEPAGE=	https://github.com/kurtmckee/feedparser

# BSD-2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

do-test:
	cd ${WRKSRC}; python3 tests/runtests.py

.include <bsd.port.mk>
