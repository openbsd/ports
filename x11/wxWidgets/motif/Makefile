# $OpenBSD: Makefile,v 1.4 2005/12/06 19:16:03 alek Exp $

COMMENT=	"C++ cross-platform GUI toolkit - motif version"
PKGNAME=		wxWidgets-motif-${VERSION}p1

USE_MOTIF=		openmotif
CONFIGURE_ARGS+=	--with-motif
RUN_DEPENDS+=		::x11/wxWidgets/headers

WANTLIB=		ICE SM X11 Xext Xmu Xpm Xt m z

.include <bsd.port.mk>
