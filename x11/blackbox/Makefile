# $OpenBSD: Makefile,v 1.8 1999/08/17 04:00:49 fgsch Exp $
# Original from: Bruno Rohee

DISTNAME	=	blackbox-0.51.0
CATEGORIES	=	x11

MAINTAINER	=	rohee@OpenBSD.ORG

MASTER_SITES	=	ftp://balance.wiw.org/pub/blackbox/

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
