# $OpenBSD: Makefile,v 1.3 2006/12/16 12:22:36 espie Exp $

COMMENT=	"library for converting characters to X key-presses"
DISTNAME=	libfakekey-0.1
PKGNAME=	${DISTNAME}p0
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

WANTLIB=	X11 Xtst

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	CPPFLAGS="-I${X11BASE}/include" \
		LDFLAGS="-L${X11BASE}/lib"

.include <bsd.port.mk>
