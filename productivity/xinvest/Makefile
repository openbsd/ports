# $OpenBSD: Makefile,v 1.6 2006/11/13 12:51:15 steven Exp $

COMMENT= 		"personal finance tracking and performance tool"

VERSION=		2.6
DISTNAME=		xinvest-${VERSION}
CATEGORIES=		productivity x11

HOMEPAGE= 		http://sunsite.dk/xinvest/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xpm Xt c m 

MASTER_SITES=	${HOMEPAGE}

USE_X11=	Yes
USE_MOTIF=	Yes
CONFIGURE_STYLE= imake
INSTALL_MAN=	No	# no manual page

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/Xinvest ${PREFIX}/bin/xinvest
	${INSTALL_DATA} ${WRKSRC}/Xinvest.ad ${PREFIX}/lib/X11/app-defaults/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xinvest
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xinvest

.include <bsd.port.mk>
