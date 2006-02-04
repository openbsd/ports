# $OpenBSD: Makefile,v 1.16 2006/02/04 19:13:36 steven Exp $

COMMENT=	"play mpeg movies on X11"

DISTNAME=	mpeg_play-2.4
CATEGORIES=	graphics

MASTER_SITES=	http://bmrc.berkeley.edu/ftp/pub/multimedia/mpeg/play/
EXTRACT_SUFX=	-src.tar.gz

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c m

WRKDIST=	${WRKDIR}/mpeg_play
CONFIGURE_STYLE=	imake

pre-patch:
	cp ${WRKSRC}/Imakefile.proto ${WRKSRC}/Imakefile
	cp ${WRKSRC}/mpeg_play.1 ${WRKSRC}/mpeg_play.man

NO_REGRESS=	Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/mpeg_play.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
