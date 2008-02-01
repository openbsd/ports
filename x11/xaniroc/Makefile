# $OpenBSD: Makefile,v 1.19 2008/02/01 21:55:23 steven Exp $

COMMENT=	animate your root-cursor

DISTNAME=	xaniroc
PKGNAME=	xaniroc-1.02p0
CATEGORIES=	x11

MASTER_SITES=	ftp://ftp.42.org/pub/orphan/
EXTRACT_SUFX=	.src.tar.Z

# License: NONE
PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_CDROM=	no license
PERMIT_DISTFILES_FTP=	no license

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xp Xpm Xt c m

USE_X11=	Yes
CONFIGURE_STYLE=	imake

post-extract:
	mv ${WRKSRC}/manpage.1 ${WRKSRC}/xaniroc.man

NO_REGRESS=	Yes

.include <bsd.port.mk>
