# $OpenBSD: Makefile,v 1.13 2013/03/11 11:44:48 espie Exp $

COMMENT =		load, configure, compose WSGI applications and servers

MODPY_EGG_VERSION =	1.5.0
DISTNAME =		PasteDeploy-${MODPY_EGG_VERSION}
PKGNAME =		py-paste-deploy-${MODPY_EGG_VERSION}

CATEGORIES =		www

HOMEPAGE =		http://pythonpaste.org/deploy/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=P/PasteDeploy/}

MODULES =		lang/python
RUN_DEPENDS =		www/py-paste
TEST_DEPENDS =	${RUN_DEPENDS} \
			devel/py-nose \
			devel/py-py

MODPY_SETUPTOOLS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-paste-deploy
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/py-paste-deploy/

.include <bsd.port.mk>
