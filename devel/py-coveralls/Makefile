# $OpenBSD: Makefile,v 1.5 2016/12/14 06:39:20 shadchin Exp $

COMMENT =	display coverage stats online via coveralls.io

MODPY_EGG_VERSION =	1.1
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

RUN_DEPENDS =		devel/py-docopt \
			devel/py-coverage \
			www/py-requests

NO_TEST =		Yes

.include <bsd.port.mk>
