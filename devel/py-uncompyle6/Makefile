# $OpenBSD: Makefile,v 1.19 2020/07/03 21:12:51 sthen Exp $

COMMENT =		Python cross-version byte-code deparser

MODPY_EGG_VERSION =	2.11.0
DISTNAME =		uncompyle6-${MODPY_EGG_VERSION}
PKGNAME =		py-uncompyle6-${MODPY_EGG_VERSION}
CATEGORIES =		devel
REVISION =		2

HOMEPAGE =		https://github.com/rocky/python-uncompyle6/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR} \
			devel/py-spark-parser${MODPY_FLAVOR} \
			devel/py-xdis${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

post-install:
	mv ${PREFIX}/bin/pydisassemble{,${MODPY_BIN_SUFFIX}}
	mv ${PREFIX}/bin/uncompyle6{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
