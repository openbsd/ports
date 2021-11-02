# $OpenBSD: Makefile,v 1.2 2021/11/02 00:01:00 sthen Exp $

COMMENT =		resolve abstract dependencies into concrete ones

MODPY_EGG_VERSION =	0.5.5
DISTNAME =		resolvelib-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

HOMEPAGE =		https://github.com/sarugaku/resolvelib

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# ISC
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=		python3

NO_TEST =		Yes

.include <bsd.port.mk>
