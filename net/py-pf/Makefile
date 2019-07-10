# $OpenBSD: Makefile,v 1.4 2019/07/10 19:17:12 sthen Exp $

COMMENT =		Python module for managing PF

# XXX struct pfi_kif changed in sys/net/pfvar.h r1.492 after this
# XXX release; a python conversion of this is in pf/_struct.py which
# XXX needs syncing
MODPY_EGG_VERSION =	0.1.9
GH_COMMIT =		28bfaef413dc206773cb93251cb6ee9740596911
GH_ACCOUNT =		dotpy
GH_PROJECT =		py-pf
DISTNAME =		py-pf-${MODPY_EGG_VERSION}
REVISION =		0

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
