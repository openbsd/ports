# $OpenBSD: Makefile,v 1.8 2018/04/24 16:59:43 danj Exp $

COMMENT =	display coverage stats online via coveralls.io

MODPY_EGG_VERSION =	1.3.0
DISTNAME =	coveralls-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	devel
MAINTAINER =	Johan Huldtgren <jhuldtgren@gmail.com>

HOMEPAGE =	http://github.com/coagulant/coveralls-python

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		devel/py-test-runner
RUN_DEPENDS =		devel/py-docopt \
			devel/py-coverage \
			www/py-requests

NO_TEST =		Yes

.include <bsd.port.mk>
