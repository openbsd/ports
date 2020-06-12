# $OpenBSD: Makefile,v 1.31 2020/06/12 04:43:27 kn Exp $

COMMENT =		fast, optionally sandboxed, Python template engine

MODPY_EGG_VERSION =	2.11.2
DISTNAME =		Jinja2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
REVISION =		0

CATEGORIES =		www devel

HOMEPAGE =		https://jinja.palletsprojects.com


# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
RUN_DEPENDS =		textproc/py-MarkupSafe${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PI =		Yes

TEST_DEPENDS =		${FULLPKGPATH}=${MODPY_EGG_VERSION}

.include <bsd.port.mk>
