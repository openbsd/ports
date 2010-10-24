# $OpenBSD: Makefile,v 1.22 2010/10/24 21:25:12 ajacoutot Exp $

COMMENT=	display from/subject from incoming mails using X11

DISTNAME=	xlbiff-3.0
PKGNAME=	${DISTNAME}p2
CATEGORIES=	mail x11

MASTER_SITES=	${MASTER_SITE_R5CONTRIB}
EXTRACT_SUFX=	.tar.Z

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c pthread-stubs \
		xcb

CONFIGURE_STYLE=imake
USE_GROFF =	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
