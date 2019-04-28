# $OpenBSD: Makefile,v 1.5 2019/04/28 20:51:36 sthen Exp $

COMMENT =		run a subprocess in a pseudo terminal

MODPY_EGG_VERSION =	0.5.1
DISTNAME =		ptyprocess-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

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
