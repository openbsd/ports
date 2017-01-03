# $OpenBSD: Makefile,v 1.4 2017/01/03 19:19:49 landry Exp $

COMMENT =		run a subprocess in a pseudo terminal

MODPY_EGG_VERSION =	0.5.1
DISTNAME =		ptyprocess-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/pexpect/ptyprocess

# ISC
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m unittest discover

.include <bsd.port.mk>
