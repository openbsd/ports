# $OpenBSD: Makefile,v 1.7 2000/01/04 01:51:07 brad Exp $
# $FreeBSD: Makefile,v 1.1.1.1 1998/08/10 00:31:40 steve Exp $

DISTNAME=	hexedit-1.1.0
CATEGORIES=	editors
MASTER_SITES=	http://pixel.linuxbox.com/
EXTRACT_SUFX=	.src.tgz

MAINTAINER=	brad@openbsd.org

GNU_CONFIGURE=	yes
WRKSRC=	${WRKDIR}/hexedit

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hexedit
	cd ${WRKSRC}; ${INSTALL_DATA} COPYING TODO Changes ${PREFIX}/share/doc/hexedit

.include <bsd.port.mk>
