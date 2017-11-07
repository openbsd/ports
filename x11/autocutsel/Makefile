# $OpenBSD: Makefile,v 1.12 2017/11/07 09:38:51 jca Exp $

COMMENT=	keep X clipboard and cutbuffer in sync

V=		0.10.0
DISTNAME=	autocutsel-$V
REVISION=	2

CATEGORIES=	x11

HOMEPAGE=	http://www.nongnu.org/autocutsel/

MAINTAINER=	Jeremie Courreges-Anglas <jca@wxcvbn.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xpm Xt c
WANTLIB += xcb

MASTER_SITES=	https://github.com/sigmike/autocutsel/releases/download/$V/

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	 CPPFLAGS="-I${X11BASE}/include"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/autocutsel
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/autocutsel

.include <bsd.port.mk>
