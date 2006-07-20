# $OpenBSD: Makefile,v 1.1.1.1 2006/07/20 21:14:21 robert Exp $

COMMENT=	"on-screen virtual keyboard"
DISTNAME=	matchbox-keyboard-0.1
CATEGORIES=	x11
MASTER_SITES=	http://projects.o-hand.com/matchbox/sources/matchbox-keyboard/0.1/

HOMEPAGE=	http://projects.o-hand.com/matchbox/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

USE_X11=	Yes

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	fakekey.0::x11/matchbox/libfakekey \
		expat.6::textproc/expat
RUN_DEPENDS=	:matchbox-common-*:x11/matchbox/matchbox-common
WANTLIB=	X11 Xext Xft Xrender Xtst c expat fontconfig freetype

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-nls
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
