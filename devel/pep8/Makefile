# $OpenBSD: Makefile,v 1.6 2014/05/26 14:37:07 ajacoutot Exp $

COMMENT =		python style guide checker

MODPY_EGG_VERSION =	1.5.6
DISTNAME =		pep8-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/jcrocholl/pep8

# Expat
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=p/pep8/}

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes
NO_TEST =		Yes

.include <bsd.port.mk>
