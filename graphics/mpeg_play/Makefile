# $OpenBSD: Makefile,v 1.13 2002/03/21 20:57:08 espie Exp $

COMMENT=	"play mpeg movies on X11"

DISTNAME=	mpeg_play-2.4
CATEGORIES=	graphics
NEED_VERSION=	1.515
MASTER_SITES=	ftp://mm-ftp.cs.berkeley.edu/pub/multimedia/mpeg/play/
EXTRACT_SUFX=	-src.tar.gz

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/mpeg_play
CONFIGURE_STYLE=	imake

pre-patch:
	cp ${WRKSRC}/Imakefile.proto ${WRKSRC}/Imakefile
	cp ${WRKSRC}/mpeg_play.1 ${WRKSRC}/mpeg_play.man

post-install:
	${INSTALL_MAN} ${WRKSRC}/mpeg_play.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
