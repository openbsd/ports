# OpenBSD makefile for:	xpm
# Version required:     3.4j
# Date created:		24 November 1997
# Whom:			todd@OpenBSD.org
#
# $OpenBSD: Makefile,v 1.3 1998/03/27 05:03:21 marc Exp $
#

DISTNAME=       xpm-3.4k
COMES_WITH=	2.3
CATEGORIES=	graphics x11
MASTER_SITES=	ftp://avahi.inria.fr/pub/xpm/

USE_IMAKE=	yes

post-install:
	@${MKDIR} ${PREFIX}/share/doc/xpm
	${INSTALL_DATA} ${WRKSRC}/FAQ.html ${PREFIX}/share/doc/xpm
	${INSTALL_DATA} ${WRKSRC}/doc/xpm.PS.gz ${PREFIX}/share/doc/xpm
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
