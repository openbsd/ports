# OpenBSD makefile for:	mpeg_play
# Version required:	2.3
# Date created:		19 December 1994
# Whom:			Don Schmidt
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/12/20 03:22:28 don Exp $
#

DISTNAME=	mpeg_play-2.3
CATEGORIES=	graphics
MASTER_SITES=	ftp://mm-ftp.cs.berkeley.edu/pub/multimedia/mpeg/play/
EXTRACT_SUFX=	-src.tar.gz

MAINTAINER=	don@OpenBSD.ORG

WRKSRC=		${WRKDIR}/mpeg_play
USE_IMAKE=	yes

pre-patch:
	${CP} ${WRKSRC}/Imakefile.proto ${WRKSRC}/Imakefile
	${CP} ${WRKSRC}/mpeg_play.1 ${WRKSRC}/mpeg_play.man

.include <bsd.port.mk>
