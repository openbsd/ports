# $OpenBSD: Makefile,v 1.6 2011/07/17 06:22:36 benoit Exp $

COMMENT =		Python easy_install replacement

MODPY_EGG_VERSION =	1.0.2
DISTNAME =		pip-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

MAINTAINER =		Wen Heping <wenheping@gmail.com>

HOMEPAGE =		http://www.pip-installer.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=p/pip/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
NO_REGRESS =		Yes

.include <bsd.port.mk>
