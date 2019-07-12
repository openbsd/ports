# $OpenBSD: Makefile,v 1.3 2019/07/12 20:48:54 sthen Exp $

COMMENT=	convert Big5/GB encoded files to postscript

DISTNAME=	bg5ps-1.3.0
REVISION=	12
CATEGORIES=	print fonts chinese x11

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=		c m ttf

MODULES=	lang/python
RUN_DEPENDS=	fonts/zh-arphicttf
LIB_DEPENDS=	print/freetype

# python.port.mk overrides various targets when CONFIGURE_STYLE is empty
CONFIGURE_STYLE=none

NO_TEST=	Yes

MODPY_ADJ_FILES =bg5ps

pre-configure:
	${SUBST_CMD} ${WRKSRC}/bg5ps.conf

MAKE_FLAGS=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include/freetype1" \
		LDFLAGS=-L${LOCALBASE}/lib \
		CC=${CC}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bg5ps ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/ttf2psm ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/lib/bg5ps
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bg5ps
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/bg5ps
	${INSTALL_DATA} ${WRKSRC}/bg5ps.conf ${PREFIX}/lib/bg5ps
	cp -R ${WRKSRC}/doc/* ${PREFIX}/share/doc/bg5ps
	cp -R ${WRKSRC}/examples/* ${PREFIX}/share/examples/bg5ps

.include <bsd.port.mk>
