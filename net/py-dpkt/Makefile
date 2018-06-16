# $OpenBSD: Makefile,v 1.14 2018/06/16 06:12:50 rpointel Exp $

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
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
