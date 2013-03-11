# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:27 espie Exp $

COMMENT =		virtual Python environment builder

MODPY_EGG_VERSION =	1.7
DISTNAME =		virtualenv-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

MAINTAINER =		Wen Heping <wenheping@gmail.com>

HOMEPAGE =		http://www.virtualenv.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=v/virtualenv/}

MODULES =		lang/python

TEST_DEPENDS =	devel/py-nose \
			devel/py-mock

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
