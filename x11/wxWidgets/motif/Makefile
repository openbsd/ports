# $OpenBSD: Makefile,v 1.6 2006/01/14 11:46:16 espie Exp $

COMMENT=	"C++ cross-platform GUI toolkit - motif version"
PKGNAME=		wxWidgets-motif-${VERSION}p3
SHARED_LIBS=		wx_motif 3.0

USE_MOTIF=		openmotif
CONFIGURE_ARGS+=	--with-motif
CONFIGURE_ENV+=		WX_CURRENT=${LIBwx_motif_VERSION:R} \
			WX_REVISION=${LIBwx_motif_VERSION:E}
RUN_DEPENDS+=		::x11/wxWidgets/headers

WANTLIB=		ICE SM X11 Xext Xmu Xpm Xt m z

.include <bsd.port.mk>
