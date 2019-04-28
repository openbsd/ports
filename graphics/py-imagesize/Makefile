# $OpenBSD: Makefile,v 1.5 2019/04/28 20:51:41 sthen Exp $

COMMENT =		getting image size from png/jpeg/jpeg2000/gif file

MODPY_EGG_VERSION =	1.1.0
DISTNAME =		imagesize-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		graphics
REVISION =		0

HOMEPAGE =		https://github.com/shibukawa/imagesize_py

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
