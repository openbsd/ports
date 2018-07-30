# $OpenBSD: Makefile,v 1.13 2018/07/30 17:13:04 jasper Exp $

COMMENT =		wrapper for Borg to create and prune backups

MODPY_EGG_VERSION =	1.2.1
DISTNAME =		borgmatic-${MODPY_EGG_VERSION}

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE =		https://torsion.org/borgmatic/

CATEGORIES =		sysutils

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		devel/py-docopt${MODPY_FLAVOR} \
			sysutils/borgbackup \
			textproc/py-pykwalify${MODPY_FLAVOR} \
			textproc/py-ruamel.yaml${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-flexmock${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/borgmatic/
	${INSTALL_DATA} ${FILESDIR}/config.yaml.dist \
		${PREFIX}/share/examples/borgmatic/

.include <bsd.port.mk>
