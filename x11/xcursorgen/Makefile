# $OpenBSD: Makefile,v 1.12 2006/05/24 20:48:07 matthieu Exp $

COMMENT=	"X11 Cursors themes generator"
DISTNAME=	xcursorgen-X11R7.1-1.0.1
PKGNAME=	xcursorgen-7.1
CATEGORIES=	x11

HOMEPAGE=	http://wiki.X.Org/

MAINTAINER=	Matthieu Herrb <matthieu@openbsd.org>

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	png.2::graphics/png

# X11
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.x.org/pub/X11R7.1/src/app/ \
		ftp://x.mirrors.skynet.be/pub/x.org/pub/X11R7.1/src/app/

WANTLIB=		X11 Xcursor c m z

SEPARATE_BUILD= 	concurrent
USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		XCURSORGEN_CFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include/libpng" \
			XCURSORGEN_LIBS="-L${X11BASE}/lib -L${LOCALBASE}/lib -lX11 -lXcursor -lpng -lz -lm"

NO_REGRESS=		Yes

.include <bsd.port.mk>
