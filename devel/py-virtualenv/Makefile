# $OpenBSD: Makefile,v 1.5 2011/12/30 07:35:59 rpointel Exp $

COMMENT =		virtual Python environment builder

MODPY_EGG_VERSION =	1.7
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
