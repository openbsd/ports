# $OpenBSD: Makefile,v 1.26 2013/10/11 21:20:58 naddy Exp $

COMMENT=	display from/subject from incoming mails using X11

DISTNAME=	xlbiff-3.0
REVISION =	3
CATEGORIES=	mail x11

MASTER_SITES=	${MASTER_SITE_R5CONTRIB}
EXTRACT_SUFX=	.tar.Z

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c pthread-stubs \
		xcb

CONFIGURE_STYLE=imake
NO_TEST=	Yes

.include <bsd.port.mk>
