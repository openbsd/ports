# $OpenBSD: Makefile,v 1.2 2011/09/22 10:10:27 naddy Exp $

COMMENT =		fork of setuptools Python packages

MODPY_EGG_VERSION =	0.6.21
DISTNAME =		distribute-${MODPY_EGG_VERSION}

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

NO_REGRESS =		Yes

.include <bsd.port.mk>
