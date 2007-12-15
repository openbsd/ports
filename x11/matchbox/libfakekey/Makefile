# $OpenBSD: Makefile,v 1.5 2007/12/15 21:43:58 ajacoutot Exp $

COMMENT=	library for converting characters to X key-presses
DISTNAME=	libfakekey-0.1
PKGNAME=	${DISTNAME}p1
SHARED_LIBS=	fakekey 0.1
CATEGORIES=	x11
MASTER_SITES=	http://projects.o-hand.com/matchbox/sources/libfakekey/0.1/

HOMEPAGE=	http://projects.o-hand.com/matchbox/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

USE_LIBTOOL=	Yes
USE_X11=	Yes

WANTLIB=	X11 Xtst Xau Xdmcp Xext

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	CPPFLAGS="-I${X11BASE}/include" \
		LDFLAGS="-L${X11BASE}/lib"

.include <bsd.port.mk>
