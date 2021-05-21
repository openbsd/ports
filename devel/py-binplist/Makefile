# $OpenBSD: Makefile,v 1.5 2021/05/21 19:50:23 kmos Exp $

COMMENT =	binary property list (plist) parser module written in Python

MODPY_EGG_VERSION = 0.1.5
DISTNAME =	py-binplist-${MODPY_EGG_VERSION}
REVISION =	0

GH_ACCOUNT =	google
GH_PROJECT =	binplist
GH_TAGNAME =	v${MODPY_EGG_VERSION}

CATEGORIES =	devel

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# Apachev2
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	devel/py-tz

.include <bsd.port.mk>
