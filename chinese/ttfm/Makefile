# $OpenBSD: Makefile,v 1.16 2006/11/13 16:31:07 steven Exp $ 

COMMENT=	"big5/gb enhanced truetype font manager"

DISTNAME=       ttfm-0.9.5
PKGNAME=        zh-${DISTNAME}
CATEGORIES=     chinese 

MAINTAINER=     Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c freetype

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
