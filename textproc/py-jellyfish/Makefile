# $OpenBSD: Makefile,v 1.11 2019/05/13 19:03:53 danj Exp $

COMMENT =		Python library for approximate and phonetic string matching

MODPY_EGG_VERSION =	0.5.6
DISTNAME =		jellyfish-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =   		textproc
REVISION =		2

HOMEPAGE =		https://github.com/sunlightlabs/jellyfish

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	jellyfish/test.py

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
NO_TEST =		Yes # requires unicodecsv for py<=3
.endif

pre-test:
	@${MODPY_CMD} build_ext --inplace

.include <bsd.port.mk>
