# $OpenBSD: Makefile,v 1.8 2004/12/16 00:31:27 alek Exp $

PKGNAME=	wmwave-0.4p1
DISTNAME=	wmwave-0-4
CATEGORIES=	net x11 x11/windowmaker

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c m 

COMMENT=	"Window Maker dockapp to display wavelan statistics"
HOMEPAGE=	http://www.schuermann.org/~dockapps/
MASTER_SITES=	ftp://rt.fm/pub/wmwave/
EXTRACT_SUFX=	.tgz

USE_X11=	Yes
NO_REGRESS=	Yes
WRKDIST=	${WRKDIR}/wmwave

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wmwave ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/wmwave.1 ${PREFIX}/man/man1/wmwave.1

.include <bsd.port.mk>
