# $OpenBSD: Makefile,v 1.45 2019/07/12 20:46:57 sthen Exp $

COMMENT=	gtk2 comic book viewer

DISTNAME=	comix-4.0.4
REVISION=	8

CATEGORIES=	graphics

# XXX consider replacing with more active fork, 
# https://sourceforge.net/projects/mcomix/ ?
HOMEPAGE=	http://comix.sourceforge.net/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=comix/}

MODULES=	lang/python \
		devel/gconf2

MODGCONF2_LIBDEP= No
MODGCONF2_SCHEMAS_DIR= comix

BUILD_DEPENDS=	graphics/py-Pillow \
		x11/py-gtk2

RUN_DEPENDS=	graphics/py-Pillow \
		x11/py-gtk2 \
		misc/shared-mime-info \
		devel/desktop-file-utils \
		x11/gtk+3,-guic

NO_TEST=	Yes

post-extract:
		gzip -d ${WRKSRC}/comix.1.gz ${WRKSRC}/mime/comicthumb.1.gz

do-build:
		${SUBST_CMD} -c ${WRKSRC}/src/comix.py ${WRKSRC}/comix

do-install:
		cd ${WRKSRC} && ${MODPY_BIN} install.py --dir ${PREFIX} install
		# schemas files are always installed under LOCALBASE, not PREFIX
		${INSTALL_DATA_DIR} ${WRKINST}/${LOCALBASE}/${SCHEMAS_INSTDIR}/
		${INSTALL_DATA} ${WRKSRC}/mime/comicbook.schemas \
			${WRKINST}/${LOCALBASE}/${SCHEMAS_INSTDIR}/

.include <bsd.port.mk>
