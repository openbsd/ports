# $OpenBSD: Makefile,v 1.11 2002/10/24 23:52:29 naddy Exp $ 

COMMENT=	"big5/gb enhanced truetype font manager"

DISTNAME=       ttfm-0.9.3
PKGNAME=        zh-${DISTNAME}
CATEGORIES=     chinese 

MAINTAINER=     Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	ftp://freebsd.sinica.edu.tw/pub/keith/ttfm/ \
		ftp://ftp.shellhung.org/pub/OpenBSD/packages/chinese/ 

LIB_DEPENDS=	ttf.1::print/freetype

MAKE_FLAGS=	CC="${CC}" CFLAGS='${CFLAGS} -Wall -I$$(FREETYPE_INCL)'

NO_REGRESS=	Yes

DOCS=	README USAGE

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ttfm
	${INSTALL_DATA_DIR} ${PREFIX}/share/ttfm
	${INSTALL_PROGRAM} ${WRKBUILD}/ttfinfo ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKBUILD}/ttfm.sh ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ttfm.sh.1 ${PREFIX}/man/man1
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/ttfm 
	cp ${WRKSRC}/modules/* ${PREFIX}/share/ttfm

.include <bsd.port.mk>
