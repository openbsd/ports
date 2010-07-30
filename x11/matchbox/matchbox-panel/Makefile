# $OpenBSD: Makefile,v 1.23 2010/07/30 12:03:09 ajacoutot Exp $
# XXX hardcoded apm list

COMMENT=	window bar for holding application launchers
DISTNAME=	matchbox-panel-0.9.3
REVISION=	6

MASTER_SITES=	${MASTER_SITES_MATCHBOX:=matchbox-panel/0.9/}

LIB_DEPENDS=	::x11/matchbox/libmatchbox
RUN_DEPENDS=	:matchbox-common-*:x11/matchbox/matchbox-common \
		:desktop-file-utils-*:devel/desktop-file-utils
MODULES=	devel/gettext
WANTLIB=	X11 Xext Xft Xrender c fontconfig freetype m z \
		glib-2.0.>=600.0 gmodule-2.0.>=600.0 gobject-2.0.>=600.0 jpeg \
		pango-1.0 pangoft2-1.0 pangoxft-1.0 png Xau Xdmcp expat \
		pthread-stubs xcb mb

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
