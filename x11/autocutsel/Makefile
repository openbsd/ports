# $OpenBSD: Makefile,v 1.10 2017/07/05 10:22:06 sthen Exp $

COMMENT=	keep X clipboard and cutbuffer in sync

V=		0.10.0
DISTNAME=	autocutsel-$V
REVISION=	0

CATEGORIES=	x11

HOMEPAGE=	http://www.nongnu.org/autocutsel/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xpm Xt c pthread-stubs
WANTLIB += xcb

MASTER_SITES=	https://github.com/sigmike/autocutsel/releases/download/$V/

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	 CPPFLAGS="-I${X11BASE}/include"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/autocutsel
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/autocutsel

.include <bsd.port.mk>
