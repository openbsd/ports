# $OpenBSD: Makefile,v 1.3 2017/02/23 13:11:20 rpointel Exp $

COMMENT =	powerful declarative parser/builder for binary data

# !!! do not update blindly: security/plaso needs a specific version
EPOCH =		0
MODPY_EGG_VERSION = 2.5.3
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
