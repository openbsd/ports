# $OpenBSD: Makefile,v 1.2 2016/07/08 16:48:21 sthen Exp $

COMMENT =	portable network interface information

CATEGORIES =	net

MODPY_EGG_VERSION = 0.10.4
REVISION =	0
DISTNAME =	netifaces-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

HOMEPAGE =	https://bitbucket.org/al45tair/netifaces

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
