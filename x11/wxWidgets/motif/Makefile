# $OpenBSD: Makefile,v 1.2 2004/12/18 21:12:42 alek Exp $

COMMENT=	"C++ cross-platform GUI toolkit - motif version"
PKGNAME=		wxWidgets-motif-${VERSION}

USE_MOTIF=		openmotif
CONFIGURE_ARGS+=	--with-motif
RUN_DEPENDS+=		::x11/wxWidgets/headers

WANTLIB=		ICE SM X11 Xext Xmu Xpm Xt m z

.include <bsd.port.mk>
