# $OpenBSD: Makefile,v 1.9 2016/04/25 09:32:39 danj Exp $

COMMENT =		command line interface tools for Python

MODPY_EGG_VERSION =	0.5.1
DISTNAME =		clint-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

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
