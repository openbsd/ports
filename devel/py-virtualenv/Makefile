# $OpenBSD: Makefile,v 1.3 2011/08/18 19:05:45 jasper Exp $

COMMENT =		virtual Python environment builder

MODPY_EGG_VERSION =	1.6.4
DISTNAME =		virtualenv-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

MAINTAINER =		Wen Heping <wenheping@gmail.com>

HOMEPAGE =		http://www.virtualenv.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=v/virtualenv/}

MODULES =		lang/python

REGRESS_DEPENDS =	devel/py-nose \
			devel/py-mock

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
