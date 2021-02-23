# $OpenBSD: Makefile,v 1.9 2021/02/23 19:39:48 sthen Exp $

COMMENT =	identification and authentication framework for WSGI

MODPY_EGG_VERSION = 2.2
DISTNAME =	repoze.who-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/./-/}
REVISION =	1

CATEGORIES =	www devel

# BSD-derived
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

MODPY_SETUPTOOLS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-repoze-who
	${INSTALL_DATA} ${WRKSRC}/README.rst \
		${PREFIX}/share/doc/py-repoze-who

.include <bsd.port.mk>
