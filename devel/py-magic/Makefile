# $OpenBSD: Makefile,v 1.1.1.1 2018/11/27 13:52:08 danj Exp $

MODPY_EGG_VERSION =	0.4.15
COMMENT =		Python module for file type identification using libmagic
DISTNAME =		python-magic-${MODPY_EGG_VERSION}
PKGNAME =		py-magic-${MODPY_EGG_VERSION}
EPOCH =			0
CATEGORIES =		devel

MAINTAINER =		Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

FLAVORS =		python3
FLAVOR ?=

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

SUBST_VARS +=		MODPY_FLAVOR

RUN_DEPENDS =		devel/libmagic

# Broken tests
NO_TEST =		Yes

.include <bsd.port.mk>
