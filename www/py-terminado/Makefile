# $OpenBSD: Makefile,v 1.4 2019/04/28 20:52:00 sthen Exp $

COMMENT =		terminals served to term.js using Tornado websockets

MODPY_EGG_VERSION =	0.6
DISTNAME =		terminado-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		www

HOMEPAGE =		https://github.com/takluyver/terminado

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

RUN_DEPENDS +=		devel/py-ptyprocess${MODPY_FLAVOR} \
			www/py-tornado${MODPY_FLAVOR}
TEST_DEPENDS +=		${RUN_DEPENDS} \
			devel/py-nose${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

# One test fails:
# https://github.com/takluyver/terminado/issues/21
do-test:
	cd ${WRKSRC}/terminado && ${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
