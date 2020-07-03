# $OpenBSD: Makefile,v 1.9 2020/07/03 21:13:02 sthen Exp $

COMMENT =	portable network interface information

CATEGORIES =	net

MODPY_EGG_VERSION = 0.10.9
DISTNAME =	netifaces-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES =	lang/python

FLAVORS =	python3
FLAVOR ?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =	${BUILD_PKGPATH}

do-test:
	printf 'import netifaces\nprint (netifaces.interfaces(), netifaces.gateways())\n' | \
		${MODPY_BIN} - | grep lo0

.include <bsd.port.mk>
