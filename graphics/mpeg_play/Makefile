# OpenBSD makefile for:	mpeg_play
# Version required:	2.3
# Date created:		19 December 1994
# Whom:			Don Schmidt
#
# $OpenBSD: Makefile,v 1.3 2000/02/11 00:37:26 espie Exp $
#

DISTNAME=	mpeg_play-2.4
CATEGORIES=	graphics
MASTER_SITES=	ftp://mm-ftp.cs.berkeley.edu/pub/multimedia/mpeg/play/
EXTRACT_SUFX=	-src.tar.gz
NEED_VERSION=	1.191

MAINTAINER=	don@OpenBSD.ORG

WRKDIST=	${WRKDIR}/mpeg_play
USE_IMAKE=	yes

pre-patch:
	${CP} ${WRKSRC}/Imakefile.proto ${WRKSRC}/Imakefile
	${CP} ${WRKSRC}/mpeg_play.1 ${WRKSRC}/mpeg_play.man

.include <bsd.port.mk>
