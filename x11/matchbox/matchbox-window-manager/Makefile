# $OpenBSD: Makefile,v 1.8 2007/12/15 21:44:24 ajacoutot Exp $

COMMENT=	window manager with a classic pda management policy
DISTNAME=	matchbox-window-manager-1.0
PKGNAME=	${DISTNAME}p0
CATEGORIES=	x11
MASTER_SITES=	http://projects.o-hand.com/matchbox/sources/matchbox-window-manager/1.0/

HOMEPAGE=	http://projects.o-hand.com/matchbox/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

USE_X11=	Yes

LIB_DEPENDS=	mb.>=1::x11/matchbox/libmatchbox
RUN_DEPENDS=	:matchbox-common-*:x11/matchbox/matchbox-common \
		:desktop-file-utils-*:devel/desktop-file-utils
MODULES=	devel/gettext
WANTLIB=	ICE SM X11 Xext Xft Xrender c fontconfig freetype m z \
		glib-2.0.>=600.0 gmodule-2.0.>=600.0 gobject-2.0.>=600.0 jpeg \
		pango-1.0 pangoft2-1.0 pangoxft-1.0 png Xau Xdmcp expat

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-session
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng -I${X11BASE}/include " \
		LDFLAGS="-L${LOCALBASE}/lib"
CFLAGS+=-I${LOCALBASE}/include/libpng -I${X11BASE}/include

.include <bsd.port.mk>
