# $OpenBSD: Makefile,v 1.2 1998/11/09 01:50:01 marc Exp $
#

DISTNAME=	xskat-1.6
CATEGORIES=	games

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	ftp://ftp.germany.eu.net/pub/X11/misc/

USE_IMAKE=	yes
WRKSRC=		${WRKDIR}/xskat

pre-configure:
	cp ${FILESDIR}/Imakefile ${WRKSRC}
	mv ${WRKSRC}/makefile ${WRKSRC}/makefile.dist

.include <bsd.port.mk>
