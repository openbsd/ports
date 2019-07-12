# $OpenBSD: Makefile,v 1.15 2019/07/12 20:48:45 sthen Exp $

COMMENT =		python network packet manipulation library

MODPY_EGG_VERSION =	1.9.1
DISTNAME =		dpkt-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		net

HOMEPAGE =		https://github.com/kbandla/dpkt

GH_ACCOUNT =   kbandla
GH_PROJECT =   dpkt
GH_TAGNAME =   v${MODPY_EGG_VERSION}

MAINTAINER =		Thanasoulas Spiros <dsp@2f30.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
