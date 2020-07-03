# $OpenBSD: Makefile,v 1.2 2020/07/03 21:12:48 sthen Exp $

COMMENT =	python module to interface with the pkg-config tool

MODPY_EGG_VERSION =	1.5.1
DISTNAME =		pkgconfig-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

HOMEPAGE =		https://github.com/matze/pkgconfig

MAINTAINER =		Martin Reindl <martin@catai.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

FLAVORS =	python3
FLAVOR =	python3

NO_TEST =	Yes

.include <bsd.port.mk>
