# $OpenBSD: Makefile,v 1.2 2017/04/15 17:26:17 sebastia Exp $

COMMENT =		data validation library

MODPY_EGG_VERSION =	0.10.2
DISTNAME =		voluptuous-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =		devel/py-nose

do-test:
	cd ${WRKSRC} && nosetests

.include <bsd.port.mk>
