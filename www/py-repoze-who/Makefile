# $OpenBSD: Makefile,v 1.11 2021/05/21 19:50:38 kmos Exp $

COMMENT =	identification and authentication framework for WSGI

MODPY_EGG_VERSION = 2.2
DISTNAME =	repoze.who-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/./-/}
REVISION =	3

CATEGORIES =	www devel

# BSD-derived
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR ?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}repoze-who
	${INSTALL_DATA} ${WRKSRC}/README.rst \
		${PREFIX}/share/doc/${MODPY_PY_PREFIX}repoze-who

.include <bsd.port.mk>
