# $OpenBSD: Makefile,v 1.8 2020/07/03 21:13:02 sthen Exp $

COMMENT =		Python module for managing PF

MODPY_EGG_VERSION =	0.2.1
GH_ACCOUNT =		dotpy
GH_PROJECT =		py-pf
GH_TAGNAME =		${MODPY_EGG_VERSION}
REVISION =		1

# remove with next update; tarball was regenerated at github
DISTFILES =		${DISTNAME}_1{${DISTNAME}}${EXTRACT_SUFX}

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

CATEGORIES =		net

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=

.if ${FLAVOR:L:Mpython3}
PATCH_LIST =		patch-* python3-*
.endif

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>
