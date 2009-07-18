# $OpenBSD: Makefile,v 1.20 2009/07/18 15:07:51 sthen Exp $

COMMENT=	convert Big5/GB encoded files to postscript

DISTNAME=	bg5ps-1.3.0
PKGNAME=	zh-${DISTNAME}p2
CATEGORIES=	chinese x11

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=	${MASTER_SITE_BACKUP}

MODULES=	lang/python
MODPY_VERSION=	2.4
RUN_DEPENDS=	::chinese/arphicttf
LIB_DEPENDS=	ttf.>=1::print/freetype

# python.port.mk overrides various targets when CONFIGURE_STYLE is empty
CONFIGURE_STYLE=none

NO_REGRESS=	Yes

pre-configure:
	perl -pi -e \
		"s|/usr/local/bin/python.*|${MODPY_BIN}|" ${WRKSRC}/bg5ps

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
