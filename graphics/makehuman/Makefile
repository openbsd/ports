# $OpenBSD: Makefile,v 1.30 2019/11/10 12:43:08 ajacoutot Exp $

COMMENT=	parametrical modeling of 3D humanoid characters

GH_ACCOUNT=	makehumancommunity
GH_PROJECT=	makehuman
GH_TAGNAME=	1.1.1

CATEGORIES=	graphics

HOMEPAGE=	http://www.makehumancommunity.org/

# GPLv2 / MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_BUILDDEP=	No

NO_BUILD=	Yes
NO_TEST=	Yes

RUN_DEPENDS=	devel/desktop-file-utils \
		graphics/py-opengl \
		math/py-numpy \
		x11/py-qt4

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${SUBST_CMD} -m 0644 -c -o ${SHAREOWN} -g ${SHAREGRP} \
		${FILESDIR}/MakeHuman.desktop.in \
		${PREFIX}/share/applications/MakeHuman.desktop
	${SUBST_CMD} -m 0555 -c -o ${BINOWN} -g ${BINGRP} \
		${FILESDIR}/makehuman.in ${PREFIX}/bin/makehuman
	cp -Rp ${WRKSRC}/makehuman ${PREFIX}/share/
	chown -r ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/makehuman/makehuman

.include <bsd.port.mk>
