# $OpenBSD: Makefile,v 1.3 2019/06/05 11:21:56 sthen Exp $

COMMENT =		console CardDAV client

MODPY_EGG_VERSION =	0.13.0
DISTNAME =		khard-${MODPY_EGG_VERSION}

CATEGORIES =		productivity

HOMEPAGE =		https://github.com/scheibler/khard
MAINTAINER =		Paco Esteban <paco@onna.be>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_TEST =		Yes

RUN_DEPENDS =		devel/py-atomicwrites${MODPY_FLAVOR} \
			devel/py-configobj${MODPY_FLAVOR} \
			textproc/py-ruamel.yaml${MODPY_FLAVOR} \
			textproc/py-unidecode${MODPY_FLAVOR} \
			textproc/py-vobject${MODPY_FLAVOR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/khard
	${INSTALL_DATA} ${WRKSRC}/misc/khard/khard.conf.example \
		${PREFIX}/share/examples/khard
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/vendor-completions
	${INSTALL_DATA} ${WRKSRC}/misc/zsh/{_khard,_email-khard} \
		${PREFIX}/share/zsh/vendor-completions

.include <bsd.port.mk>
