# $OpenBSD: Makefile,v 1.5 2019/04/28 20:51:32 sthen Exp $

COMMENT =		discover and load entry points from installed packages

MODPY_EGG_VERSION =	0.2.3
DISTNAME =		entrypoints-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

HOMEPAGE =		https://github.com/takluyver/entrypoints

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-configparser
.endif

.include <bsd.port.mk>
