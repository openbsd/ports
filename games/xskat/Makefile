# OpenBSD makefile for:	xskat
# Version required:	xskat-1.6
# Date created:		May 19 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/20 00:22:16 angelos Exp $
#

DISTNAME=	xskat-1.6
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.germany.eu.net/pub/X11/misc/

MAINTAINER=	angelos@openbsd.org

WRKSRC=		${WRKDIR}/xskat
USE_IMAKE=	yes

pre-configure:
	cp ${FILESDIR}/Imakefile ${WRKSRC}
	mv ${WRKSRC}/makefile ${WRKSRC}/makefile.dist

.include <bsd.port.mk>
