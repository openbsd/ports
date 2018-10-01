# $OpenBSD: Makefile,v 1.1.1.1 2018/10/01 10:37:58 remi Exp $

COMMENT =		console CardDAV client

MODPY_EGG_VERSION =	0.12.2
DISTNAME =		khard-${MODPY_EGG_VERSION}

CATEGORIES =		productivity

HOMEPAGE =		https://github.com/scheibler/khard

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =         ${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		devel/py-atomicwrites${MODPY_FLAVOR} \
			devel/py-configobj${MODPY_FLAVOR} \
			textproc/py-ruamel.yaml${MODPY_FLAVOR} \
			textproc/py-unidecode${MODPY_FLAVOR} \
			textproc/py-vobject${MODPY_FLAVOR}

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/khard
	${INSTALL_DATA} ${WRKSRC}/misc/khard/khard.conf.example \
		${PREFIX}/share/examples/khard

.include <bsd.port.mk>
