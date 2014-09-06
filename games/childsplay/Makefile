# $OpenBSD: Makefile,v 1.22 2014/09/06 07:25:29 ajacoutot Exp $

COMMENT=	collection of educational activities for young children

DISTNAME=	childsplay-2.6.4
EXTRACT_SUFX=	.tgz

CATEGORIES=	games education

HOMEPAGE=	http://www.childsplay.mobi/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://download.savannah.gnu.org/releases/childsplay/

MODULES=	lang/python

# NO_BUILD=Yes but python(1) is used in do-install
BUILD_DEPENDS=	${_MODPY_BUILD_DEPENDS}

RUN_DEPENDS=	databases/py-sqlalchemy \
		devel/pygame \
		x11/py-gtk2

PKG_ARCH=	*
NO_TEST=	Yes
NO_BUILD=	Yes

MODPY_ADJ_FILES=childsplay.py

pre-configure:
	perl -pi -e 's,/usr/local,${PREFIX},' ${WRKSRC}/pangofont.py
	echo '#!/bin/sh' >${WRKSRC}/childsplay.sh
	echo >>${WRKSRC}/childsplay.sh
	echo 'cd ${MODPY_SITEPKG}/childsplay' >>${WRKSRC}/childsplay.sh
	echo 'exec ${MODPY_BIN} childsplay.py $$@' >>${WRKSRC}/childsplay.sh

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}/${MODPY_SITEPKG}/childsplay
	${INSTALL_SCRIPT} ${WRKSRC}/childsplay.sh ${PREFIX}/bin/childsplay
	${INSTALL_DATA} ${WRKSRC}/*.py \
		${WRKINST}/${MODPY_SITEPKG}/childsplay
	cp -Rp ${WRKSRC}/locale ${PREFIX}/share
	${INSTALL_DATA} ${WRKSRC}/sp_content.db \
		${WRKINST}/${MODPY_SITEPKG}/childsplay
.for i in SPWidgets alphabetsounds lib
	cp -Rp ${WRKSRC}/$i ${WRKINST}/${MODPY_SITEPKG}/childsplay
.endfor
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${WRKINST}/${MODPY_SITEPKG}/childsplay
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${WRKINST}/${MODPY_SITEPKG}/childsplay \
		${PREFIX}/share/locale

.include <bsd.port.mk>
