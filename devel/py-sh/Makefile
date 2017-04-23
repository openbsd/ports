# $OpenBSD: Makefile,v 1.5 2017/04/23 23:06:57 juanfra Exp $

COMMENT =	Python subprocess interface

MODPY_EGG_VERSION =	1.12.13
DISTNAME =	sh-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	devel
MAINTAINER =	Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

HOMEPAGE =	https://github.com/amoffat/sh

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

NO_TEST =		Yes

.include <bsd.port.mk>
