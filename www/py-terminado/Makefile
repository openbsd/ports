# $OpenBSD: Makefile,v 1.5 2019/05/10 11:35:39 bket Exp $

COMMENT =		terminals served to term.js using Tornado websockets

MODPY_EGG_VERSION =	0.8.2
DISTNAME =		terminado-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

HOMEPAGE =		https://github.com/takluyver/terminado

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

RUN_DEPENDS +=		devel/py-ptyprocess${MODPY_FLAVOR} \
			www/py-tornado${MODPY_FLAVOR}>=4
TEST_DEPENDS +=		${RUN_DEPENDS} \
			devel/py-nose${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

# https://github.com/takluyver/terminado/issues/21
do-test:
	cd ${WRKSRC}/terminado && ${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
