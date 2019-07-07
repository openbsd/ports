# $OpenBSD: Makefile,v 1.2 2019/07/07 18:11:21 jasper Exp $

COMMENT =		distributed data storage classes

MODPY_EGG_VERSION =	0.06
DISTNAME =		ana-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE =		https://github.com/zardus/ana

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-future${MODPY_FLAVOR}

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}ana/
	${INSTALL_DATA} ${FILESDIR}/README.md ${PREFIX}/share/doc/${MODPY_PY_PREFIX}ana/

.include <bsd.port.mk>
