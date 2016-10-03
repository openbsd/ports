# $OpenBSD: Makefile,v 1.1.1.1 2016/10/03 17:40:26 sebastia Exp $

COMMENT =		data validation library

MODPY_EGG_VERSION =	0.9.3
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
