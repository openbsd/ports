# $OpenBSD: Makefile,v 1.3 2017/05/09 06:09:42 sebastia Exp $

COMMENT =		data validation library

MODPY_EGG_VERSION =	0.10.5
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
