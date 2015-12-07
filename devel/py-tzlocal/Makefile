# $OpenBSD: Makefile,v 1.2 2015/12/07 21:16:25 sthen Exp $

COMMENT =		python tzinfo object for the local timezone

MODPY_EGG_VERSION =	1.2
REVISION =		0
DISTNAME =		tzlocal-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/regebro/tzlocal

MAINTAINER=		Florian Obser <florian+ports@narrans.de>

# CC0 1.0 Universal
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR?=

MODULES =		lang/python

RUN_DEPENDS =		devel/py-tz

.include <bsd.port.mk>
