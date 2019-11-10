# $OpenBSD: Makefile,v 1.8 2019/11/10 21:45:47 kmos Exp $

COMMENT =	munkres algorithm for the Assignment Problem

MODPY_EGG_VERSION =	1.1.2
DISTNAME =		munkres-${MODPY_EGG_VERSION}
PKGNAME = 		py-algorithm-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/bmc/munkres

# Apache v2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS = 	Yes
MODPY_PYTEST =		Yes

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

.include <bsd.port.mk>
