# $OpenBSD: Makefile,v 1.5 2021/02/23 19:39:17 sthen Exp $

COMMENT =		namespace for backported Python features

MODPY_EGG_VERSION =	1.0
DISTNAME =		backports-${MODPY_EGG_VERSION}
PKGNAME =		py-backports-${MODPY_EGG_VERSION}
CATEGORIES =		devel
REVISION =		1

HOMEPAGE =		https://pypi.python.org/pypi/backports

MASTER_SITES =		https://dev.gentoo.org/~radhermit/dist/

# Python Software Foundation License
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

.include <bsd.port.mk>
