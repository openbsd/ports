# $OpenBSD: Makefile,v 1.1.1.1 2020/06/16 20:30:05 bluhm Exp $

COMMENT =	widgets for OPC UA

MODPY_EGG_VERSION =	0.5.8

DISTNAME =	opcua-widgets-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

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
