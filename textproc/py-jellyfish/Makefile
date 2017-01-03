# $OpenBSD: Makefile,v 1.8 2017/01/03 19:27:52 landry Exp $

COMMENT =		Python library for approximate and phonetic string matching

MODPY_EGG_VERSION =	0.5.6
DISTNAME =		jellyfish-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =   		textproc
REVISION =		0

HOMEPAGE =		https://github.com/sunlightlabs/jellyfish

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

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

pre-test:
	@${MODPY_CMD} build_ext --inplace

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest jellyfish/test.py

.include <bsd.port.mk>
