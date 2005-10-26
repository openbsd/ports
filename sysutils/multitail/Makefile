# $OpenBSD: Makefile,v 1.13 2005/10/26 15:26:52 bernd Exp $

COMMENT=	"multi-window tail(1) utility"

VERSION=	3.6.1
DISTNAME=	multitail-${VERSION}
CATEGORIES=	sysutils

HOMEPAGE=	http://www.vanheusden.com/multitail/	

MASTER_SITES=	${HOMEPAGE}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m ncurses util panel

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
