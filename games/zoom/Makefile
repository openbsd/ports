# $OpenBSD: Makefile,v 1.9 2007/09/15 18:01:04 simon Exp $

COMMENT=		Z-code interpreter for X11

DISTNAME=		zoom-1.0.1
CATEGORIES=     	games
HOMEPAGE=		http://www.logicalshift.demon.co.uk/unix/zoom/

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 
WANTLIB=		ICE SM X11 Xext Xft Xrender c m

MASTER_SITES=		${HOMEPAGE}

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
VMEM_WARNING=		Yes

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/zoom
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/zoom/README
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/zoom
	${INSTALL_DATA} ${WRKSRC}/src/zoomrc \
		${PREFIX}/share/examples/zoom/dot.zoomrc

.include <bsd.port.mk>
