COMMENT =	libtorrent settings modification plugin for deluge

MODPY_DISTV =	2.0.0
REVISION =	2

GH_ACCOUNT =	ratanakvlun
GH_PROJECT =	deluge-ltconfig
GH_TAGNAME =	v${MODPY_DISTV}

CATEGORIES =	net

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
BUILD_DEPENDS =	devel/py-setuptools
RUN_DEPENDS =	net/deluge

do-build:
	cd ${WRKSRC} && \
		${SETENV} ${MAKE_ENV} ${MODPY_BIN} setup.py bdist_egg

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_SITEPKG}/deluge/plugins
	${INSTALL_DATA} ${WRKBUILD}/dist/*.egg \
		${WRKINST}${MODPY_SITEPKG}/deluge/plugins

.include <bsd.port.mk>
