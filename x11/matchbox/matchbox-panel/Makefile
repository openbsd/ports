# $OpenBSD: Makefile,v 1.19 2009/08/11 08:42:08 ajacoutot Exp $
# XXX hardcoded apm list

COMMENT=	window bar for holding application launchers
DISTNAME=	matchbox-panel-0.9.3
PKGNAME=	${DISTNAME}p4

MASTER_SITES=	${MASTER_SITES_MATCHBOX:=matchbox-panel/0.9/}

LIB_DEPENDS=	mb.>=1::x11/matchbox/libmatchbox
RUN_DEPENDS=	:matchbox-common-*:x11/matchbox/matchbox-common \
		:desktop-file-utils-*:devel/desktop-file-utils
MODULES=	devel/gettext
WANTLIB=	X11 Xext Xft Xrender c fontconfig freetype m z \
		glib-2.0.>=600.0 gmodule-2.0.>=600.0 gobject-2.0.>=600.0 jpeg \
		pango-1.0 pangoft2-1.0 pangoxft-1.0 png Xau Xdmcp expat \
		pthread-stubs xcb

# not all powerpc support apm(4), hence the use of ${MACHINE} and macppc
.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "arm" \
 || ${MACHINE_ARCH} == "i386" || ${MACHINE} == "macppc" \
 || ${MACHINE_ARCH} == "sparc" || ${MACHINE_ARCH} == "sparc64"
PKG_ARGS+=-DAPM=1
.else
PKG_ARGS+=-DAPM=0
.endif

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-nls
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
		HAVEGETTEXT="yes" \
		INTLIBS="-liconv -lintl" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
