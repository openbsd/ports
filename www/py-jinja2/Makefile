# $OpenBSD: Makefile,v 1.15 2013/03/08 09:13:36 jasper Exp $

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
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=J/Jinja2/}

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

REGRESS_DEPENDS =	devel/py-nose

.include <bsd.port.mk>
