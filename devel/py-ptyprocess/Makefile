# $OpenBSD: Makefile,v 1.3 2016/04/27 21:52:10 jca Exp $

COMMENT =		run a subprocess in a pseudo terminal

MODPY_EGG_VERSION =	0.5.1
DISTNAME =		ptyprocess-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

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
