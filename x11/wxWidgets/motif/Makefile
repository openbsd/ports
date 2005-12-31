# $OpenBSD: Makefile,v 1.5 2005/12/31 15:18:44 naddy Exp $

COMMENT=	"C++ cross-platform GUI toolkit - motif version"
PKGNAME=		wxWidgets-motif-${VERSION}p2
SHARED_LIBS=		wx_motif 2.4

USE_MOTIF=		openmotif
CONFIGURE_ARGS+=	--with-motif
CONFIGURE_ENV+=		WX_CURRENT=${LIBwx_motif_VERSION:R} \
			WX_REVISION=${LIBwx_motif_VERSION:E}
RUN_DEPENDS+=		::x11/wxWidgets/headers

WANTLIB=		ICE SM X11 Xext Xmu Xpm Xt m z

.include <bsd.port.mk>
