# $OpenBSD: Makefile,v 1.9 2010/10/24 21:15:36 ajacoutot Exp $

COMMENT=	stylus character recognition tool for X11

DISTNAME=	xscribble
PKGNAME=	xscribble-20000616
REVISION=	3
CATEGORIES=	x11

HOMEPAGE=	http://www.handhelds.org/projects/xscribble.html

EXTRACT_SUFX=	.tgz

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xdmcp Xext ICE Xt Xtst Xmu c m SM Xpm Xaw

MASTER_SITES=	http://www.handhelds.org/download/projects/xscribble/


NO_REGRESS=	Yes

CONFIGURE_STYLE= imake

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xscribble
	${INSTALL_DATA} ${WRKSRC}/classifiers/*.cl \
		${PREFIX}/share/examples/xscribble

.include <bsd.port.mk>
