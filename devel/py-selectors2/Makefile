# $OpenBSD: Makefile,v 1.1.1.1 2019/05/10 15:19:03 jasper Exp $

COMMENT =	backported, durable, and portable selectors

MODPY_EGG_VERSION =	2.0.1
DISTNAME =	selectors2-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	https://www.github.com/SethMichaelLarson/selectors2

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =		devel/py-mock

.include <bsd.port.mk>
