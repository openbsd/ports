# $OpenBSD: Makefile,v 1.3 2021/02/23 19:39:18 sthen Exp $

COMMENT =	EFILTER query language

MODPY_EGG_VERSION = 1.5
DISTNAME =	efilter-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

GH_ACCOUNT =	google
GH_PROJECT =	dotty
GH_TAGNAME =	v${MODPY_EGG_VERSION}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/google/dotty/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# Apache v2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-dateutil \
			devel/py-six \
			devel/py-tz

NO_TEST =	Yes

.include <bsd.port.mk>
