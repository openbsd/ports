# $OpenBSD: Makefile,v 1.1.1.1 2016/10/04 19:34:44 rpointel Exp $

COMMENT =	powerful declarative parser/builder for binary data

MODPY_EGG_VERSION = 2.8.5
DISTNAME =	construct-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	http://construct.readthedocs.io/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

MODPY_PI =	Yes

FLAVORS =	python3
FLAVOR ?=

TEST_DEPENDS =	devel/py-test${MODPY_FLAVOR} \
		math/py-numpy${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest

.include <bsd.port.mk>
