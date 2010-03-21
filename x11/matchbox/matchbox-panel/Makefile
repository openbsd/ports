# $OpenBSD: Makefile,v 1.21 2010/03/21 11:35:26 ajacoutot Exp $
# XXX hardcoded apm list

COMMENT=	window bar for holding application launchers
DISTNAME=	matchbox-panel-0.9.3
PKGNAME=	${DISTNAME}p5

MASTER_SITES=	${MASTER_SITES_MATCHBOX:=matchbox-panel/0.9/}

LIB_DEPENDS=	mb.>=1::x11/matchbox/libmatchbox
RUN_DEPENDS=	:matchbox-common-*:x11/matchbox/matchbox-common \
		:desktop-file-utils-*:devel/desktop-file-utils
MODULES=	devel/gettext
WANTLIB=	X11 Xext Xft Xrender c fontconfig freetype m z \
		glib-2.0.>=600.0 gmodule-2.0.>=600.0 gobject-2.0.>=600.0 jpeg \
		pango-1.0 pangoft2-1.0 pangoxft-1.0 png Xau Xdmcp expat \
		pthread-stubs xcb

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-nls
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
		HAVEGETTEXT="yes" \
		INTLIBS="-liconv -lintl" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

.for m in ${MACHINE_ARCH} ${MACHINE}
.if ${APM_ARCHS:L:M$m}
PKG_ARGS+=-DAPM=1
.else
PKG_ARGS+=-DAPM=0
.endif
.endfor
