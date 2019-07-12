# $OpenBSD: Makefile,v 1.18 2019/07/12 20:51:02 sthen Exp $

COMMENT =		load, configure, compose WSGI applications and servers

MODPY_EGG_VERSION =	1.5.0
DISTNAME =		PasteDeploy-${MODPY_EGG_VERSION}
PKGNAME =		py-paste-deploy-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		www

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
RUN_DEPENDS =		www/py-paste
TEST_DEPENDS =		devel/py-nose \
			devel/py-py

MODPY_SETUPTOOLS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-paste-deploy
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/py-paste-deploy/

.include <bsd.port.mk>
