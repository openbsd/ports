# $OpenBSD: Makefile,v 1.1.1.1 2004/07/16 21:01:36 todd Exp $

COMMENT=	"C++ cross-platform GUI toolkit - lesstif version"
# Note the package name must conflict with motif until these can be installed side-by-side
PKGNAME=		wxWidgets-motif-${VERSION}-lesstif

CONFIGURE_ARGS+=	--with-motif
RUN_DEPENDS+=		::x11/wxWidgets/headers

# 'USE_MOTIF=any' breaks package names if lesstif is already in FLAVORS or PSEUDO_FLAVORS
# 'USE_MOTIF=lesstif' has a broken LIB_DEPENDS
# (You can build with openmotif installed, but you get a broken package)
LIB_DEPENDS+=		Xm.=1::x11/lesstif

.include <bsd.port.mk>
