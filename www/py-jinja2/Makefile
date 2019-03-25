# $OpenBSD: Makefile,v 1.26 2019/03/25 14:29:52 kn Exp $

COMMENT =		fast, optionally sandboxed, Python template engine

MODPY_EGG_VERSION =	2.10
DISTNAME =		Jinja2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}

GH_ACCOUNT=		pallets
GH_PROJECT=		jinja
GH_TAGNAME=		${MODPY_EGG_VERSION}

CATEGORIES =		www devel

HOMEPAGE =		http://jinja.pocoo.org/

MAINTAINER =		frantisek holop <minusf@obiit.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
RUN_DEPENDS =		textproc/py-MarkupSafe${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS}

FLAVORS =		python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

.include <bsd.port.mk>
