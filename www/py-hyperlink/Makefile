# $OpenBSD: Makefile,v 1.2 2018/04/03 22:32:16 pvk Exp $

COMMENT =		pure-Python implementation of immutable URLs

MODPY_EGG_VERSION =	18.0.0

DISTNAME =		hyperlink-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			net/py-idna${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest lib/hyperlink/test

.include <bsd.port.mk>
