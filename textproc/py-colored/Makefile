# $OpenBSD: Makefile,v 1.3 2019/04/28 20:51:55 sthen Exp $

COMMENT =		simple library for color and formatting in terminal

MODPY_EGG_VERSION =	1.3.93
DISTNAME =		colored-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		textproc

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS =		${FULLPKGNAME}:${FULLPKGPATH}

do-test:
	for _t in ${WRKSRC}/tests/test_*.py; do \
		${MODPY_BIN} $${_t}; \
	done

.include <bsd.port.mk>
