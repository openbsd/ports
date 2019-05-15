# $OpenBSD: Makefile,v 1.28 2019/05/15 12:04:42 kmos Exp $

COMMENT =		fast, optionally sandboxed, Python template engine

MODPY_EGG_VERSION =	2.10
DISTNAME =		Jinja2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
REVISION=		0

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

FLAVORS =		python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

.include <bsd.port.mk>
