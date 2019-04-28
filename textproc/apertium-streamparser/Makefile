# $OpenBSD: Makefile,v 1.2 2019/04/28 20:51:54 sthen Exp $

COMMENT =	apertium stream format parser

DISTNAME =	apertium-streamparser-${MODPY_EGG_VERSION}

MODPY_EGG_VERSION =	5.0.2
REVISION =		0

CATEGORIES =	textproc

HOMEPAGE =	https://github.com/apertium/streamparser

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

MAKE_ENV =		LC_CTYPE=en_US.UTF-8

.include <bsd.port.mk>
