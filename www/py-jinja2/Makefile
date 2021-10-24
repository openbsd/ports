# $OpenBSD: Makefile,v 1.35 2021/10/24 09:28:52 sthen Exp $

COMMENT =		fast, optionally sandboxed, Python template engine

MODPY_EGG_VERSION =	2.11.3
REVISION =		0
DISTNAME =		Jinja2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}

CATEGORIES =		www devel

HOMEPAGE =		https://jinja.palletsprojects.com

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
RUN_DEPENDS =		textproc/py-MarkupSafe${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PI =		Yes

TEST_DEPENDS =		${FULLPKGPATH}=${MODPY_EGG_VERSION}

.include <bsd.port.mk>
