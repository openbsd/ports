# $OpenBSD: Makefile,v 1.1.1.1 2004/07/16 21:01:36 todd Exp $

COMMENT=	"C++ cross-platform GUI toolkit - motif version"
PKGNAME=		wxWidgets-motif-${VERSION}

USE_MOTIF=		openmotif
CONFIGURE_ARGS+=	--with-motif
RUN_DEPENDS+=		::x11/wxWidgets/headers

.include <bsd.port.mk>
