# $OpenBSD: Makefile,v 1.4 2007/04/28 07:04:03 sturm Exp $

COMMENT=	"on-screen virtual keyboard"
DISTNAME=	matchbox-keyboard-0.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	x11
MASTER_SITES=	http://projects.o-hand.com/matchbox/sources/matchbox-keyboard/0.1/

HOMEPAGE=	http://projects.o-hand.com/matchbox/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

USE_X11=	Yes

LIB_DEPENDS=	fakekey::x11/matchbox/libfakekey
RUN_DEPENDS=	:matchbox-common-*:x11/matchbox/matchbox-common
WANTLIB=	X11 Xau Xdmcp Xext Xft Xrender Xtst c expat fontconfig freetype z

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-nls \
		--with-expat-includes=${X11BASE}/include \
		--with-expat-lib=${X11BASE}/lib
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
