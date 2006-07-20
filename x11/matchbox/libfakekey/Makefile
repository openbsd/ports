# $OpenBSD: Makefile,v 1.1.1.1 2006/07/20 21:09:58 robert Exp $

COMMENT=	"library for converting characters to X key-presses"
DISTNAME=	libfakekey-0.1
SHARED_LIBS=	fakekey 0.1
MODGNU_SHARED_LIBS=	fakekey ''
CATEGORIES=	x11
MASTER_SITES=	http://projects.o-hand.com/matchbox/sources/libfakekey/0.1/

HOMEPAGE=	http://projects.o-hand.com/matchbox/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
WANTLIB=	X11 Xtst

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
