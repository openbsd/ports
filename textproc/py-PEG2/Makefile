# $OpenBSD: Makefile,v 1.3 2019/04/28 20:51:55 sthen Exp $

COMMENT =		PEG Parser-Interpreter in Python

MODPY_EGG_VERSION =	2.15.2
DISTNAME =		pyPEG2-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/^py/${MODPY_PY_PREFIX}/}
REVISION =		1

CATEGORIES =		textproc

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m unittest discover

.include <bsd.port.mk>
