# $OpenBSD: Makefile,v 1.13 2021/11/02 00:02:55 sthen Exp $

COMMENT =	identification and authentication framework for WSGI

MODPY_EGG_VERSION = 2.2
DISTNAME =	repoze.who-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/./-/}
REVISION =	5

CATEGORIES =	www devel

# BSD-derived
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR =	python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}repoze-who
	${INSTALL_DATA} ${WRKSRC}/README.rst \
		${PREFIX}/share/doc/${MODPY_PY_PREFIX}repoze-who

.include <bsd.port.mk>
