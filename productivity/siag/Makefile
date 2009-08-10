# $OpenBSD: Makefile,v 1.10 2009/08/10 06:34:09 kili Exp $

COMMENT=		tightly integrated, free office package

VERSION=		3.6.1
DISTNAME=		siag-${VERSION}
PKGNAME=		${DISTNAME}p2
CATEGORIES=		productivity x11

HOMEPAGE=		http://siag.nu/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xmu Xpm Xt c m ncurses pthread-stubs \
			xcb termcap

MASTER_SITES=		http://siag.nu/pub/siag/

USE_X11=		Yes

LIB_DEPENDS=		Mowitz.>=3::x11/mowitz \
			neXtaw.>=13::x11/neXtaw

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+=	--with-docdir=${PREFIX}/share/doc/siag/

CONFIGURE_ENV+=		LDFLAGS="-L${WRKBUILD}/common -L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
