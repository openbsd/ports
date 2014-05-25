# $OpenBSD: Makefile,v 1.18 2014/05/25 18:19:32 rpe Exp $

COMMENT =		fast, optionally sandboxed, Python template engine

MODPY_EGG_VERSION =	2.7.2
DISTNAME =		Jinja2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}

CATEGORIES =		www devel

HOMEPAGE =		http://jinja.pocoo.org/

MAINTAINER =		frantisek holop <minusf@obiit.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=J/Jinja2/}

MODULES =		lang/python
RUN_DEPENDS =		textproc/py-MarkupSafe
TEST_DEPENDS =		${RUN_DEPENDS}

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
