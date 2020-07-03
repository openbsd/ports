# $OpenBSD: Makefile,v 1.3 2020/07/03 21:13:09 sthen Exp $

COMMENT =		JFFS2 filesystem extraction tool

MODPY_EGG_VERSION =	0.2
GH_COMMIT =		d1aff710928f05e889b0ae23d97d1b9640eecbd0
GH_PROJECT =		jefferson
GH_ACCOUNT =		wittrup
DISTNAME =		jefferson-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		sysutils

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		devel/py-cstruct${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>
