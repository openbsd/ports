# $OpenBSD: Makefile,v 1.24 2010/11/22 08:37:03 espie Exp $
# XXX hardcoded apm list

COMMENT=	window bar for holding application launchers
DISTNAME=	matchbox-panel-0.9.3
REVISION=	6

MASTER_SITES=	${MASTER_SITES_MATCHBOX:=matchbox-panel/0.9/}

LIB_DEPENDS=	x11/matchbox/libmatchbox
RUN_DEPENDS=	x11/matchbox/matchbox-common \
		devel/desktop-file-utils
MODULES=	devel/gettext
WANTLIB=	X11 Xext Xft Xrender c fontconfig freetype m z \
		glib-2.0>=600 gmodule-2.0>=600 gobject-2.0>=600 jpeg \
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
