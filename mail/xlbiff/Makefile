# $OpenBSD: Makefile,v 1.18 2007/11/14 09:43:40 steven Exp $

COMMENT=	display from/subject from incoming mails using X11

DISTNAME=	xlbiff-3.0
PKGNAME=	${DISTNAME}p0
CATEGORIES=	mail x11

MASTER_SITES=	${MASTER_SITE_R5CONTRIB}
EXTRACT_SUFX=	.tar.Z

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xp Xpm Xt c

CONFIGURE_STYLE=imake
USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
