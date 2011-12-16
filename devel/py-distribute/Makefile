# $OpenBSD: Makefile,v 1.3 2011/12/16 08:19:36 ajacoutot Exp $

COMMENT =		fork of setuptools Python packages

MODPY_EGG_VERSION =	0.6.24
DISTNAME =		distribute-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		http://packages.python.org/distribute/

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# PSFL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=d/distribute/}

MODULES =		lang/python
FLAVORS =		python3
FLAVOR ?=

NO_REGRESS =		Yes

.include <bsd.port.mk>
