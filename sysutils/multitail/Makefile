# $OpenBSD: Makefile,v 1.18 2006/06/12 21:07:21 naddy Exp $

COMMENT=	"multi-window tail(1) utility"

VERSION=	4.0.6
DISTNAME=	multitail-${VERSION}
CATEGORIES=	sysutils

HOMEPAGE=	http://www.vanheusden.com/multitail/	

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

WANTLIB=	c m ncurses util panel

NO_REGRESS=	Yes

MAKE_FLAGS=	CC='${CC}' \
		CFLAGS='${CFLAGS} -DVERSION=\"${VERSION}\" \
			-DCONFIG_FILE=\"${SYSCONFDIR}/multitail.conf\"'

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/multitail ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/multitail.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/multitail
	${INSTALL_DATA} ${WRKSRC}/readme.txt ${WRKSRC}/manual.html \
		${PREFIX}/share/doc/multitail
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/multitail
	${INSTALL_DATA} ${WRKSRC}/multitail.conf \
		${PREFIX}/share/examples/multitail
 
.include <bsd.port.mk>
