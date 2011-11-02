# $OpenBSD: Makefile,v 1.24 2011/11/02 09:57:22 jasper Exp $

COMMENT=	play mpeg movies on X11

DISTNAME=	mpeg_play-2.4
REVISION=	4
CATEGORIES=	graphics

MASTER_SITES=	http://bmrc.berkeley.edu/ftp/pub/multimedia/mpeg/play/
EXTRACT_SUFX=	-src.tar.gz

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xext c m Xau Xdmcp

WRKDIST=	${WRKDIR}/mpeg_play
CONFIGURE_STYLE=	imake
USE_GROFF =	Yes

pre-patch:
	cp ${WRKSRC}/Imakefile.proto ${WRKSRC}/Imakefile
	cp ${WRKSRC}/mpeg_play.1 ${WRKSRC}/mpeg_play.man

NO_REGRESS=	Yes

.include <bsd.port.mk>
