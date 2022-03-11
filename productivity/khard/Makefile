COMMENT =		console CardDAV client

MODPY_EGG_VERSION =	0.17.0
DISTNAME =		khard-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		productivity

HOMEPAGE =		https://github.com/scheibler/khard
MAINTAINER =		Paco Esteban <paco@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR} \
			textproc/py-sphinx${MODPY_FLAVOR} \
			${RUN_DEPENDS}

RUN_DEPENDS =		devel/py-atomicwrites${MODPY_FLAVOR} \
			devel/py-configobj${MODPY_FLAVOR} \
			textproc/py-ruamel.yaml${MODPY_FLAVOR} \
			textproc/py-unidecode${MODPY_FLAVOR} \
			textproc/py-vobject${MODPY_FLAVOR}

USE_GMAKE =		Yes

post-build:
	@cd ${WRKSRC} && \
		${MAKE_PROGRAM} -C doc man \
		SPHINXAPIDOC=${LOCALBASE}/bin/sphinx-apidoc${MODPY_BIN_SUFFIX} \
		SPHINXBUILD=${LOCALBASE}/bin/sphinx-build${MODPY_BIN_SUFFIX}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/khard
	cd ${WRKSRC}/doc/source/examples; \
	${INSTALL_DATA} template.yaml khard.conf.example \
		${PREFIX}/share/examples/khard
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${WRKSRC}/misc/zsh/{_khard,_email-khard} \
		${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/doc/build/man/khard.1 \
		${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/man/man5
	${INSTALL_DATA} ${WRKSRC}/doc/build/man/khard.conf.5 \
		${PREFIX}/man/man5

.include <bsd.port.mk>
