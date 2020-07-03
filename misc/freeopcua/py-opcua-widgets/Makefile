# $OpenBSD: Makefile,v 1.3 2020/07/03 21:12:58 sthen Exp $

COMMENT =	widgets for OPC UA

MODPY_EGG_VERSION =	0.5.9

DISTNAME =	opcua-widgets-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	misc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		misc/freeopcua/py-opcua${MODPY_FLAVOR} \
			x11/py-qt5${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
