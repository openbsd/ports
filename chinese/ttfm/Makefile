# $OpenBSD: Makefile,v 1.7 2001/03/08 02:34:54 kevlo Exp $ 

DISTNAME=       ttfm-0.9.3
PKGNAME=        zh-${DISTNAME}
CATEGORIES=     chinese 
NEED_VERSION=	1.351

MAINTAINER=     Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	ftp://freebsd.sinica.edu.tw/pub/keith/ttfm/ \
		ftp://ftp.shellhung.org/pub/OpenBSD/packages/chinese/ 

LIB_DEPENDS=	ttf.1::print/freetype

MAKE_FLAGS=	CC="${CC}" CFLAGS='${CFLAGS} -Wall -I$$(FREETYPE_INCL)'

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
