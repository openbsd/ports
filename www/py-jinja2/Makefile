# $OpenBSD: Makefile,v 1.16 2013/03/11 11:44:48 espie Exp $

COMMENT =		fast, optionally sandboxed, Python template engine

MODPY_EGG_VERSION =	2.6
DISTNAME =		Jinja2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
REVISION =		2

CATEGORIES =		www devel

HOMEPAGE =		http://jinja.pocoo.org/2/

MAINTAINER =		frantisek holop <minusf@obiit.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=J/Jinja2/}

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =	devel/py-nose

.include <bsd.port.mk>
