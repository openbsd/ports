# $OpenBSD: Makefile,v 1.6 2006/08/03 23:28:11 espie Exp $

COMMENT=		"office suite"

VERSION=		3.5.6
DISTNAME=		siag-${VERSION}
CATEGORIES=		x11

HOMEPAGE=		http://siag.nu/

MASTER_SITES=		http://siag.nu/pub/siag/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xmu Xpm Xt c m ncurses termcap

USE_X11=		Yes

LIB_DEPENDS=		Mowitz.>=2::x11/mowitz \
			neXtaw.>=13::x11/neXtaw

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+=	--with-docdir=${PREFIX}/share/doc

CONFIGURE_ENV+=		LDFLAGS="-L${WRKBUILD}/common -L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

NO_REGRESS=		Yes

.include <bsd.port.mk>
