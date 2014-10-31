# $OpenBSD: Makefile,v 1.1.1.1 2014/10/31 12:01:09 landry Exp $

COMMENT =	Python subprocess interface

MODPY_EGG_VERSION = 1.09
DISTNAME =	sh-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	devel
MAINTAINER =	Johan Huldtgren <jhuldtgren@gmail.com>

HOMEPAGE =	https://github.com/amoffat/sh

# MIT
PERMIT_PACKAGE_CDROM =  Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=s/sh/}

MODULES =	lang/python
NO_TEST =	Yes

.include <bsd.port.mk>
