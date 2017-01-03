# $OpenBSD: Makefile,v 1.4 2017/01/03 19:24:43 landry Exp $

COMMENT =	portable network interface information

CATEGORIES =	net

MODPY_EGG_VERSION = 0.10.5
DISTNAME =	netifaces-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

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
