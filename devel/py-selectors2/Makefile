# $OpenBSD: Makefile,v 1.2 2019/07/12 20:45:53 sthen Exp $

COMMENT =	backported, durable, and portable selectors

MODPY_EGG_VERSION =	2.0.1
DISTNAME =	selectors2-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	https://www.github.com/SethMichaelLarson/selectors2

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =		devel/py-mock

.include <bsd.port.mk>
