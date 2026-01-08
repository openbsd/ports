BROKEN=		problems with py3.13 and with newer numpy
# 3.13: 'import imp' in some plugins
# numpy: uses removed API; builds with https://github.com/makehumancommunity/makehuman/pull/271
#  but this isn't enough (fails during startup)

COMMENT=	parametrical modeling of 3D humanoid characters

GH_ACCOUNT=	makehumancommunity
GH_PROJECT=	makehuman
GH_TAGNAME=	v1.3.0
REVISION=	1

CATEGORIES=	graphics

HOMEPAGE=	http://www.makehumancommunity.org/

# AGPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

NO_TEST=	Yes

BUILD_DEPENDS=	math/py-numpy \
		x11/py-qt5

RUN_DEPENDS=	devel/desktop-file-utils \
		graphics/py-opengl \
		math/py-numpy \
		x11/py-qt5

do-build:
.for TARGET in models proxies targets
	cd ${WRKSRC}/makehuman && ${MODPY_BIN} compile_${TARGET}.py
.endfor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/makehuman/icons/makehuman.png \
		${PREFIX}/share/pixmaps
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${SUBST_CMD} -m 0644 -c -o ${SHAREOWN} -g ${SHAREGRP} \
		${FILESDIR}/MakeHuman.desktop.in \
		${PREFIX}/share/applications/MakeHuman.desktop
	${SUBST_CMD} -m 0555 -c -o ${BINOWN} -g ${BINGRP} \
		${FILESDIR}/makehuman.in ${PREFIX}/bin/makehuman
	cp -Rp ${WRKSRC}/makehuman ${PREFIX}/share
	${MODPY_COMPILEALL} ${PREFIX}/share/makehuman

.include <bsd.port.mk>
