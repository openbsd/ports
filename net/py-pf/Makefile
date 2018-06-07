# $OpenBSD: Makefile,v 1.1.1.1 2018/06/07 09:07:39 jasper Exp $

COMMENT =		Python module for managing PF

MODPY_EGG_VERSION =	0.1.8
GH_COMMIT =		7d95eaf7984b43647a5208ab0be93ad6c0337ee6
GH_ACCOUNT =		dotpy
GH_PROJECT =		py-pf
DISTNAME =		py-pf-${MODPY_EGG_VERSION}

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

CATEGORIES =		net

# BSD
PERMIT_PACKAGE_CDROM =	Yes

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
