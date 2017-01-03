# $OpenBSD: Makefile,v 1.10 2017/01/03 19:19:48 landry Exp $

COMMENT =		command line interface tools for Python

MODPY_EGG_VERSION =	0.5.1
DISTNAME =		clint-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

MAINTAINER =		frantisek holop <minusf@obiit.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

DOCS =			${PREFIX}/share/doc/${MODPY_PY_PREFIX}clint

post-install:
	${INSTALL_DATA_DIR} ${DOCS}
	cd ${WRKSRC} && pax -rw *.rst ${DOCS}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} test_clint.py

.include <bsd.port.mk>
