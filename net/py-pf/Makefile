# $OpenBSD: Makefile,v 1.2 2018/06/15 06:36:30 jasper Exp $

COMMENT =		Python module for managing PF

MODPY_EGG_VERSION =	0.1.9
GH_COMMIT =		28bfaef413dc206773cb93251cb6ee9740596911
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
