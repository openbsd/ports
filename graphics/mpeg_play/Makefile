# OpenBSD makefile for:	mpeg_play
# Version required:	2.3
# Date created:		19 December 1994
# Whom:			Don Schmidt
#
# $OpenBSD: Makefile,v 1.8 2000/03/24 22:11:45 espie Exp $
#

DISTNAME=	mpeg_play-2.4
CATEGORIES=	graphics
NEED_VERSION=	1.191
MASTER_SITES=	ftp://mm-ftp.cs.berkeley.edu/pub/multimedia/mpeg/play/
EXTRACT_SUFX=	-src.tar.gz

MAINTAINER=	ports@OpenBSD.ORG

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

WRKDIST=	${WRKDIR}/mpeg_play
USE_IMAKE=	yes

pre-patch:
	cp ${WRKSRC}/Imakefile.proto ${WRKSRC}/Imakefile
	cp ${WRKSRC}/mpeg_play.1 ${WRKSRC}/mpeg_play.man

.include <bsd.port.mk>
