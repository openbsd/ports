# $OpenBSD: Makefile,v 1.1.1.1 2017/11/20 17:56:08 jasper Exp $

COMMENT =		DNS reconnaissance tool for locating non-contiguous IP space

MODPY_EGG_VERSION =	1.2.0
GH_ACCOUNT =		mschwager
GH_PROJECT =		fierce
GH_TAGNAME =		${MODPY_EGG_VERSION}

CATEGORIES =		security

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		net/py-dnspython${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/fierce.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/fierce/
	mv ${PREFIX}/lists ${PREFIX}/share/fierce/

.include <bsd.port.mk>
