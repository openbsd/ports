# $OpenBSD: Makefile,v 1.35 2021/11/02 00:02:21 sthen Exp $

COMMENT =		wrapper for Borg to create and prune backups

MODPY_EGG_VERSION =	1.5.13
DISTNAME =		borgmatic-${MODPY_EGG_VERSION}
REVISION =		0

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE =		https://torsion.org/borgmatic/

CATEGORIES =		sysutils

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-colorama${MODPY_FLAVOR} \
			devel/py-docopt${MODPY_FLAVOR} \
			sysutils/borgbackup \
			textproc/py-pykwalify${MODPY_FLAVOR} \
			textproc/py-ruamel.yaml${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-flexmock${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/borgmatic/
	${INSTALL_DATA} ${FILESDIR}/config.yaml.dist \
		${PREFIX}/share/examples/borgmatic/

.include <bsd.port.mk>
