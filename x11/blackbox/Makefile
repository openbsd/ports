# $OpenBSD: Makefile,v 1.10 1999/09/06 03:03:11 fgsch Exp $

DISTNAME	=	blackbox-0.51.2
CATEGORIES	=	x11

MAINTAINER	=	rohee@OpenBSD.ORG

MASTER_SITES	=	ftp://portal.alug.org/pub/blackbox/0.5x.x/

USE_X11		=	yes
GNU_CONFIGURE	=	yes

# uncomment the following line to enable KDE support
#CONFIGURE_ARGS	+=	--enable-kde

post-install:
	${MKDIR} ${PREFIX}/share/doc/blackbox
	${INSTALL_DATA} ${WRKSRC}/AUTHORS ${PREFIX}/share/doc/blackbox
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/blackbox
	${INSTALL_DATA} ${WRKSRC}/ChangeLog ${PREFIX}/share/doc/blackbox
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/blackbox

.include <bsd.port.mk>
