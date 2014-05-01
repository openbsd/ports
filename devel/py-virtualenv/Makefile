# $OpenBSD: Makefile,v 1.7 2014/05/01 09:22:22 benoit Exp $

COMMENT =		virtual Python environment builder

MODPY_EGG_VERSION =	1.7
DISTNAME =		virtualenv-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

REVISION =		0

HOMEPAGE =		http://www.virtualenv.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=v/virtualenv/}

MODULES =		lang/python

TEST_DEPENDS =	devel/py-nose \
			devel/py-mock

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
