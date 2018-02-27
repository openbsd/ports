# $OpenBSD: Makefile,v 1.2 2018/02/27 13:16:01 espie Exp $

MODPY_EGG_VERSION =	1.4.0
COMMENT =	mock out responses from py-requests
DISTNAME =	requests-mock-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	www
BROKEN =	goes straight to download during build, insecure

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR ?=

RUN_DEPENDS =	devel/py-six${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR}

#TEST_DEPENDS =	${RUN_DEPENDS} \
#		devel/py-testtools${MODPY_FLAVOR}

# Requires py-testrepository
NO_TEST =	Yes

.include <bsd.port.mk>
