# $OpenBSD: Makefile,v 1.28 2019/07/12 20:47:39 sthen Exp $

COMMENT=	display from/subject from incoming mails using X11

DISTNAME=	xlbiff-3.0
REVISION =	4
CATEGORIES=	mail x11

MASTER_SITES=	${MASTER_SITE_R5CONTRIB}
EXTRACT_SUFX=	.tar.Z

PERMIT_PACKAGE=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c \
		xcb

CONFIGURE_STYLE=imake
NO_TEST=	Yes

.include <bsd.port.mk>
