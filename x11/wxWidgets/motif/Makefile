# $OpenBSD: Makefile,v 1.3 2005/02/13 10:56:24 sturm Exp $

COMMENT=	"C++ cross-platform GUI toolkit - motif version"
PKGNAME=		wxWidgets-motif-${VERSION}p0

USE_MOTIF=		openmotif
CONFIGURE_ARGS+=	--with-motif
RUN_DEPENDS+=		::x11/wxWidgets/headers

WANTLIB=		ICE SM X11 Xext Xmu Xpm Xt m z

.include <bsd.port.mk>
