# $OpenBSD: Makefile,v 1.10 2005/02/11 16:35:05 naddy Exp $

COMMENT=	"multi-window tail(1) utility"

VERSION=	3.4.5
DISTNAME=	multitail-${VERSION}
CATEGORIES=	sysutils

HOMEPAGE=	http://www.vanheusden.com/multitail/	

MASTER_SITES=	${HOMEPAGE}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m ncurses util

EXTRACT_SUFX=	.tgz

NO_REGRESS=	Yes

MAKE_FLAGS=	CC='${CC}' CFLAGS='${CFLAGS} -DVERSION=\"${VERSION}\"'

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/multitail
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/multitail
	${INSTALL_PROGRAM} ${WRKBUILD}/multitail ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/multitail.1 ${PREFIX}/man/man1
	cd ${WRKSRC} && ${INSTALL_DATA} readme.txt manual.html \
	  ${PREFIX}/share/doc/multitail
	${INSTALL_DATA} ${WRKSRC}/multitail.conf \
	  ${PREFIX}/share/examples/multitail
 
.include <bsd.port.mk>
