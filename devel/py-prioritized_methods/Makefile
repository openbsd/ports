# $OpenBSD: Makefile,v 1.5 2011/09/16 09:24:55 espie Exp $

COMMENT =		extension to PEAK-Rules to prioritize methods

MODPY_EGG_VERSION =	0.2.1
DISTNAME =		prioritized_methods-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		devel

HOMEPAGE =		http://pypi.python.org/pypi/prioritized_methods

MAINTAINER =		Martynas Venckus <martynas@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=p/prioritized_methods/}

MODULES =		lang/python
RUN_DEPENDS =		devel/py-peak-rules
BUILD_DEPENDS =		${RUN_DEPENDS}

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
