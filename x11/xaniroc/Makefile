# $OpenBSD: Makefile,v 1.23 2010/10/24 21:15:35 ajacoutot Exp $

COMMENT=	animate your root-cursor

DISTNAME=	xaniroc
PKGNAME=	xaniroc-1.02
REVISION=	1
CATEGORIES=	x11

MASTER_SITES=	ftp://ftp.42.org/pub/orphan/
EXTRACT_SUFX=	.src.tar.Z

# License: NONE
PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_CDROM=	no license
PERMIT_DISTFILES_FTP=	no license

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c m

USE_GROFF =	Yes
CONFIGURE_STYLE=	imake

post-extract:
	mv ${WRKSRC}/manpage.1 ${WRKSRC}/xaniroc.man

NO_REGRESS=	Yes

.include <bsd.port.mk>
