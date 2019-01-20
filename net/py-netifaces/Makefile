# $OpenBSD: Makefile,v 1.6 2019/01/20 12:09:00 sthen Exp $

COMMENT =	portable network interface information

CATEGORIES =	net

MODPY_EGG_VERSION = 0.10.9
DISTNAME =	netifaces-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

# MIT
PERMIT_PACKAGE_CDROM =	Yes

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
