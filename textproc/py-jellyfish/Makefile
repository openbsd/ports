# $OpenBSD: Makefile,v 1.12 2019/07/12 20:50:12 sthen Exp $

COMMENT =		Python library for approximate and phonetic string matching

MODPY_EGG_VERSION =	0.5.6
DISTNAME =		jellyfish-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =   		textproc
REVISION =		2

HOMEPAGE =		https://github.com/sunlightlabs/jellyfish

# BSD
PERMIT_PACKAGE =	Yes

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
