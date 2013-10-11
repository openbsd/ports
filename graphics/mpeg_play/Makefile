# $OpenBSD: Makefile,v 1.26 2013/10/11 21:20:57 naddy Exp $

COMMENT=	play mpeg movies on X11

DISTNAME=	mpeg_play-2.4
REVISION=	4
CATEGORIES=	graphics

MASTER_SITES=	http://bmrc.berkeley.edu/ftp/pub/multimedia/mpeg/play/
EXTRACT_SUFX=	-src.tar.gz

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 Xext c m Xau Xdmcp

WRKDIST=	${WRKDIR}/mpeg_play
CONFIGURE_STYLE=	imake

pre-patch:
	cp ${WRKSRC}/Imakefile.proto ${WRKSRC}/Imakefile
	cp ${WRKSRC}/mpeg_play.1 ${WRKSRC}/mpeg_play.man

NO_TEST=	Yes

.include <bsd.port.mk>
