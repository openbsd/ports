# $OpenBSD: Makefile,v 1.12 2013/03/11 11:46:14 espie Exp $

COMMENT=		libXaw widget set replacement

DISTNAME=		neXtaw-0.15.1
REVISION=		0

SHARED_LIBS +=	neXtaw               15.1     # .15.1
CATEGORIES=		x11 devel

HOMEPAGE=		http://siag.nu/neXtaw/

# X11
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ICE SM X11 Xau Xdmcp Xext Xmu Xt \
			pthread-stubs xcb

MASTER_SITES=		http://siag.nu/pub/neXtaw/

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
CONFIGURE_ENV+=		CPPFLAGS="-I${X11BASE}/include"

.include <bsd.port.mk>
