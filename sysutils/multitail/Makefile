# $OpenBSD: Makefile,v 1.6 2004/10/12 00:22:40 pvalchev Exp $

COMMENT=	"multi-window tail(1) utility"

VERSION=	3.3.7
DISTNAME=	multitail-${VERSION}
CATEGORIES=	sysutils

HOMEPAGE=	http://www.vanheusden.com/multitail/	

MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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
