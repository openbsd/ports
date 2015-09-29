# $OpenBSD: Makefile,v 1.8 2015/09/29 10:52:11 sthen Exp $

COMMENT =		extension to PEAK-Rules to prioritize methods

MODPY_EGG_VERSION =	0.2.1
DISTNAME =		prioritized_methods-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		3

CATEGORIES =		devel

HOMEPAGE =		http://pypi.python.org/pypi/prioritized_methods

MAINTAINER =		Martynas Venckus <martynas@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
RUN_DEPENDS =		devel/py-peak-rules
BUILD_DEPENDS =		${RUN_DEPENDS}

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
