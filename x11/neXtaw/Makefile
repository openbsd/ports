# $OpenBSD: Makefile,v 1.17 2019/07/12 20:51:17 sthen Exp $

COMMENT=		libXaw widget set replacement

DISTNAME=		neXtaw-0.15.1
REVISION=		2

SHARED_LIBS +=	neXtaw               15.1     # .15.1
CATEGORIES=		x11 devel

HOMEPAGE=		http://siag.nu/neXtaw/

# X11
PERMIT_PACKAGE=	Yes

WANTLIB=		ICE SM X11 Xau Xdmcp Xext Xmu Xt \
			xcb

MASTER_SITES=		http://siag.nu/pub/neXtaw/

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS="-I${X11BASE}/include"

.include <bsd.port.mk>
