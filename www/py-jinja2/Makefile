# $OpenBSD: Makefile,v 1.20 2014/11/28 21:04:05 sthen Exp $

COMMENT =		fast, optionally sandboxed, Python template engine

MODPY_EGG_VERSION =	2.7.3
DISTNAME =		Jinja2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
REVISION =		0

CATEGORIES =		www devel

HOMEPAGE =		http://jinja.pocoo.org/

MAINTAINER =		frantisek holop <minusf@obiit.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=J/Jinja2/}

MODULES =		lang/python
RUN_DEPENDS =		textproc/py-MarkupSafe${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS}

FLAVORS =		python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
