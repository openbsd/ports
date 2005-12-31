# $OpenBSD: Makefile,v 1.3 2005/12/31 15:18:44 naddy Exp $

COMMENT=	"C++ cross-platform GUI toolkit - lesstif version"
# Note the package name must conflict with motif until these can be installed side-by-side
PKGNAME=		wxWidgets-motif-${VERSION}p1-lesstif
SHARED_LIBS=		wx_motif 2.4

CONFIGURE_ARGS+=	--with-motif
CONFIGURE_ENV+=		WX_CURRENT=${LIBwx_motif_VERSION:R} \
			WX_REVISION=${LIBwx_motif_VERSION:E}
RUN_DEPENDS+=		::x11/wxWidgets/headers

# 'USE_MOTIF=any' breaks package names if lesstif is already in FLAVORS or PSEUDO_FLAVORS
# 'USE_MOTIF=lesstif' has a broken LIB_DEPENDS
# (You can build with openmotif installed, but you get a broken package)
LIB_DEPENDS+=		Xm.=1::x11/lesstif

.include <bsd.port.mk>
