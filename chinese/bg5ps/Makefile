# $OpenBSD: Makefile,v 1.16 2006/06/05 16:14:24 alek Exp $

COMMENT=	"convert Big5/GB encoded files to postscript"

DISTNAME=	bg5ps-1.3.0
PKGNAME=	zh-${DISTNAME}p1
CATEGORIES=	chinese x11

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=	ftp://freebsd.sinica.edu.tw/pub/keith/

PYTHON_VER=	2.4
RUN_DEPENDS=	::chinese/arphicttf \
		:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
LIB_DEPENDS=	ttf.1::print/freetype

NO_REGRESS=	Yes

pre-configure:
	perl -pi -e \
		"s|/usr/local/bin/python.*|${LOCALBASE}/bin/python${PYTHON_VER}|" \
		${WRKSRC}/bg5ps

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
