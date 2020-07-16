# $OpenBSD: Makefile,v 1.32 2020/07/16 04:36:04 rsadowski Exp $

COMMENT=	parametrical modeling of 3D humanoid characters

PKGNAME=	makehuman-1.2.0beta2

GH_ACCOUNT=	makehumancommunity
GH_PROJECT=	makehuman
GH_TAGNAME=	1c6a4147eeec0f1f07f73904f33ebd4e8ef0065a

CATEGORIES=	graphics

HOMEPAGE=	http://www.makehumancommunity.org/

MAINTAINER=	Dimitri Karamazov <deserter666@danwin1210.me>

# AGPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}

NO_TEST=	Yes

BUILD_DEPENDS=	math/py-numpy${MODPY_FLAVOR} \
		x11/py-qt5${MODPY_FLAVOR}

RUN_DEPENDS=	devel/desktop-file-utils \
		graphics/py-opengl${MODPY_FLAVOR} \
		math/py-numpy${MODPY_FLAVOR} \
		x11/py-qt5${MODPY_FLAVOR}

do-build:
	cd ${WRKSRC}/makehuman && ${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py .
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

.include <bsd.port.mk>
