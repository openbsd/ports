# $OpenBSD: Makefile,v 1.10 2009/08/11 08:42:08 ajacoutot Exp $

COMMENT=	on-screen virtual keyboard
DISTNAME=	matchbox-keyboard-0.1
PKGNAME=	${DISTNAME}p4

MASTER_SITES=	${MASTER_SITES_MATCHBOX:=matchbox-keyboard/0.1/}

LIB_DEPENDS=	fakekey::x11/matchbox/libfakekey
RUN_DEPENDS=	:matchbox-common-*:x11/matchbox/matchbox-common \
		:desktop-file-utils-*:devel/desktop-file-utils
WANTLIB=	X11 Xau Xdmcp Xext Xft Xrender Xtst c expat fontconfig freetype z \
		pthread-stubs xcb

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-nls
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
