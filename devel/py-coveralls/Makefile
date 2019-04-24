# $OpenBSD: Makefile,v 1.10 2019/04/24 20:07:11 sthen Exp $

COMMENT =	display coverage stats online via coveralls.io

MODPY_EGG_VERSION =	1.6.0
DISTNAME =	coveralls-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	devel
MAINTAINER =	Johan Huldtgren <jhuldtgren@gmail.com>

HOMEPAGE =	https://github.com/coagulant/coveralls-python

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-docopt \
			devel/py-coverage \
			www/py-requests

NO_TEST =		Yes

.include <bsd.port.mk>
