# $OpenBSD: Makefile,v 1.2 2010/10/18 20:52:10 espie Exp $

COMMENT=	colorize specific patters in input

DISTNAME=	supercat-0.5.5
CATEGORIES=	misc

HOMEPAGE=	http://supercat.nosredna.net/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Girish Venkatachalam <girish1729@gmail.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

CONFIGURE_STYLE=	gnu
USE_GROFF =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/spc ${PREFIX}/bin/spc
	${INSTALL_MAN} ${WRKSRC}/doc/spc.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/supercat/
	${INSTALL_DATA} ${WRKSRC}/spcrc/spcrc-* \
		${PREFIX}/share/examples/supercat

.include <bsd.port.mk>
