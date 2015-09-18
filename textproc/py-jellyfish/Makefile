# $OpenBSD: Makefile,v 1.3 2015/09/18 09:37:46 ajacoutot Exp $

COMMENT =		Python library for approximate and phonetic string matching

MODPY_EGG_VERSION =	0.5.1
DISTNAME =		jellyfish-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =   		textproc

HOMEPAGE =		https://github.com/sunlightlabs/jellyfish

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR}

.if !${FLAVOR:Mpython3}
NO_TEST =		Yes # requires unicodecsv for py<=3
.endif

.include <bsd.port.mk>
