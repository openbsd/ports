# $OpenBSD: Makefile,v 1.6 2019/11/14 10:04:20 jasper Exp $

COMMENT =		Python module for managing PF

MODPY_EGG_VERSION =	0.2.1
GH_ACCOUNT =		dotpy
GH_PROJECT =		py-pf
DISTNAME =		py-pf-${MODPY_EGG_VERSION}

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

WRKDIST =		${WRKDIR}/py-pf-${DISTNAME}

.include <bsd.port.mk>
