# $OpenBSD: Makefile,v 1.5 1999/02/21 04:26:13 marc Exp $
#

DISTNAME=       xpm-3.4k
CATEGORIES=	graphics x11

NEED_VERSION=	1.64
COMES_WITH=	2.3
MIRROR_DISTFILE=no

MASTER_SITES=	ftp://avahi.inria.fr/pub/xpm/

USE_IMAKE=	yes

post-install:
	@${MKDIR} ${PREFIX}/share/doc/xpm
	${INSTALL_DATA} ${WRKSRC}/FAQ.html ${PREFIX}/share/doc/xpm
	${INSTALL_DATA} ${WRKSRC}/doc/xpm.PS.gz ${PREFIX}/share/doc/xpm
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
