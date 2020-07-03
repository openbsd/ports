# $OpenBSD: Makefile,v 1.7 2020/07/03 21:12:48 sthen Exp $

COMMENT =		run a subprocess in a pseudo terminal

MODPY_EGG_VERSION =	0.5.1
DISTNAME =		ptyprocess-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		devel

HOMEPAGE =		https://github.com/pexpect/ptyprocess

# ISC
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m unittest discover

.include <bsd.port.mk>
