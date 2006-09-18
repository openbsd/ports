# $OpenBSD: Makefile,v 1.4 2006/09/18 10:21:49 espie Exp $

COMMENT=	"pda style application launcher or item browser"
DISTNAME=	matchbox-desktop-0.9.1
PKGNAME=	${DISTNAME}p1
CATEGORIES=	x11
MASTER_SITES=	http://projects.o-hand.com/matchbox/sources/matchbox-desktop/0.9/

HOMEPAGE=	http://projects.o-hand.com/matchbox/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

USE_LIBTOOL=	Yes
USE_X11=	Yes

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	mb.>=1::x11/matchbox/libmatchbox
RUN_DEPENDS=	:matchbox-common-*:x11/matchbox/matchbox-common
MODULES=	devel/gettext
WANTLIB=	X11 Xext Xft Xrender c fontconfig freetype m z \
		glib-2.0.>=600.0 gmodule-2.0.>=600.0 gobject-2.0.>=600.0 jpeg \
		pango-1.0.>=800.0 pangoft2-1.0.>=800.0 pangoxft-1.0.>=800.0 png

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
