# $OpenBSD: Makefile,v 1.18 2020/07/03 21:13:19 sthen Exp $

COMMENT =		html/xml templating engine

MODPY_EGG_VERSION =	1.0.2
DISTNAME =		meld3-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
REVISION =		2

CATEGORIES =		www textproc

HOMEPAGE =		https://github.com/supervisor/meld3

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes

DOCS =		${PREFIX}/share/doc/${MODPY_PY_PREFIX}meld3
post-install:
	${INSTALL_DATA_DIR} ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/README.txt ${DOCS}

.include <bsd.port.mk>
