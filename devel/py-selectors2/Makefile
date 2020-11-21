# $OpenBSD: Makefile,v 1.3 2020/11/21 15:39:51 benoit Exp $

COMMENT =	backported, durable, and portable selectors

MODPY_EGG_VERSION =	2.0.2
DISTNAME =	selectors2-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	https://www.github.com/SethMichaelLarson/selectors2

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =		devel/py-mock \
			sysutils/py-psutil

.include <bsd.port.mk>
