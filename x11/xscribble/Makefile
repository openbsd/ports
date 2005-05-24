# $OpenBSD: Makefile,v 1.1.1.1 2005/05/24 07:19:35 mcbride Exp $

COMMENT=	"A stylus character recognition tool for X11"

DISTNAME=	xscribble
PKGNAME=	xscribble-20000616
CATEGORIES=	x11

EXTRACT_SUFX=	.tgz

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext ICE Xt Xtst Xmu c Xp m SM Xpm Xaw

MASTER_SITES=	ftp://ftp.handhelds.org/projects/xscribble/

USE_X11=	Yes

NO_REGRESS=	Yes

CONFIGURE_STYLE= imake

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xscribble
	${INSTALL_DATA} ${WRKSRC}/classifiers/*.cl \
		${PREFIX}/share/examples/xscribble

.include <bsd.port.mk>
