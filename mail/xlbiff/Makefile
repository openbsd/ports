# $OpenBSD: Makefile,v 1.19 2009/08/10 06:32:43 kili Exp $

COMMENT=	display from/subject from incoming mails using X11

DISTNAME=	xlbiff-3.0
PKGNAME=	${DISTNAME}p1
CATEGORIES=	mail x11

MASTER_SITES=	${MASTER_SITE_R5CONTRIB}
EXTRACT_SUFX=	.tar.Z

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xp Xpm Xt c pthread-stubs \
		xcb

CONFIGURE_STYLE=imake
USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
