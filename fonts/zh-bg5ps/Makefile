# $OpenBSD: Makefile,v 1.5 2014/08/30 21:54:08 jasper Exp $

COMMENT=	convert Big5/GB encoded files to postscript

DISTNAME=	bg5ps-1.3.0
PKGNAME=	zh-${DISTNAME}
REVISION=	9
CATEGORIES=	fonts chinese x11

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m ttf

MODULES=	lang/python
RUN_DEPENDS=	fonts/zh-arphicttf
LIB_DEPENDS=	print/freetype

# python.port.mk overrides various targets when CONFIGURE_STYLE is empty
CONFIGURE_STYLE=none

NO_TEST=	Yes

pre-configure:
	perl -pi -e \
		"s|/usr/local/bin/python.*|${MODPY_BIN}|" ${WRKSRC}/bg5ps
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
