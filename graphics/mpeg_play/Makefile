# OpenBSD makefile for:	mpeg_play
# Version required:	2.3
# Date created:		19 December 1994
# Whom:			Don Schmidt
#
# $OpenBSD: Makefile,v 1.9 2000/04/05 00:47:23 espie Exp $
#

DISTNAME=	mpeg_play-2.4
CATEGORIES=	graphics
NEED_VERSION=	1.191
MASTER_SITES=	ftp://mm-ftp.cs.berkeley.edu/pub/multimedia/mpeg/play/
EXTRACT_SUFX=	-src.tar.gz

MAINTAINER=	ports@OpenBSD.ORG

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
FAKE=			Yes

WRKDIST=	${WRKDIR}/mpeg_play
USE_IMAKE=	Yes

pre-patch:
	cp ${WRKSRC}/Imakefile.proto ${WRKSRC}/Imakefile
	cp ${WRKSRC}/mpeg_play.1 ${WRKSRC}/mpeg_play.man

.include <bsd.port.mk>
