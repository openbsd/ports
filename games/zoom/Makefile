# $OpenBSD: Makefile,v 1.5 2004/03/10 17:32:46 naddy Exp $

COMMENT=		"Z-code interpreter for X11"

DISTNAME=		zoom-0.9.99beta3
CATEGORIES=     	games
HOMEPAGE=		http://www.logicalshift.demon.co.uk/unix/zoom/

MAINTAINER=		Jose Nazario <jose@crimelabs.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=		${HOMEPAGE}

USE_X11=		Yes
CONFIGURE_STYLE=	gnu

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/zoom
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/zoom/README
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/zoom
	${INSTALL_DATA} ${WRKSRC}/zoomrc \
		${PREFIX}/share/examples/zoom/dot.zoomrc

.include <bsd.port.mk>
