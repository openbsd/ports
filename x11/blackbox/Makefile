# $OpenBSD: Makefile,v 1.15 1999/09/22 00:05:47 rohee Exp $

DISTNAME=	blackbox-0.51.3.1
CATEGORIES=	x11
MASTER_SITES=	ftp://portal.alug.org/pub/blackbox/0.5x.x/ \
		ftp://ftp.dti.ad.jp/pub/X/blackbox/0.5x.x/

MAINTAINER=	ports@openbsd.org

USE_X11=	yes
GNU_CONFIGURE=	yes

# uncomment the following line to enable KDE support
#CONFIGURE_ARGS+= --enable-kde

post-install:
	@${MKDIR} ${PREFIX}/share/doc/blackbox
	${INSTALL_DATA} ${WRKSRC}/AUTHORS ${PREFIX}/share/doc/blackbox
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/blackbox
	${INSTALL_DATA} ${WRKSRC}/ChangeLog ${PREFIX}/share/doc/blackbox
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/blackbox

.include <bsd.port.mk>
