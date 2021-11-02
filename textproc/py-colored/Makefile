# $OpenBSD: Makefile,v 1.7 2021/11/02 00:02:36 sthen Exp $

COMMENT =		simple library for color and formatting in terminal

MODPY_EGG_VERSION =	1.3.93
DISTNAME =		colored-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		3

CATEGORIES =		textproc

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR =	python3

TEST_DEPENDS =		${FULLPKGNAME}:${FULLPKGPATH}

do-test:
	for _t in ${WRKSRC}/tests/test_*.py; do \
		${MODPY_BIN} $${_t}; \
	done

.include <bsd.port.mk>
