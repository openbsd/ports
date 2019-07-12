# $OpenBSD: Makefile,v 1.12 2019/07/12 20:45:52 sthen Exp $

COMMENT =		extension to PEAK-Rules to prioritize methods

MODPY_EGG_VERSION =	0.2.1
DISTNAME =		prioritized_methods-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		5

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
RUN_DEPENDS =		devel/py-peak-rules
BUILD_DEPENDS =		${RUN_DEPENDS}

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
