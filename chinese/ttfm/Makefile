# $OpenBSD: Makefile,v 1.17 2007/04/13 14:10:24 sturm Exp $ 

COMMENT=	"big5/gb enhanced truetype font manager"

DISTNAME=       ttfm-0.9.5
PKGNAME=        zh-${DISTNAME}p0
CATEGORIES=     chinese 

MAINTAINER=     Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c freetype z

MASTER_SITES=	ftp://freebsd.sinica.edu.tw/pub/statue/ttfm/

MAKE_FLAGS=	CC="${CC}" CFLAGS='${CFLAGS} `freetype-config --cflags`'

USE_X11=	Yes
NO_REGRESS=	Yes

DOCS=	README USAGE
SCRIPTS=	gscjk.ttfm xttfm.ttfm

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ttfm
	${INSTALL_DATA_DIR} ${PREFIX}/share/ttfm
	${INSTALL_PROGRAM} ${WRKBUILD}/ttfinfo ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKBUILD}/ttfm.sh ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ttfm.sh.1 ${PREFIX}/man/man1
	@cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/ttfm 
	@cd ${WRKSRC}/modules; ${INSTALL_SCRIPT} ${SCRIPTS} ${PREFIX}/share/ttfm

.include <bsd.port.mk>
