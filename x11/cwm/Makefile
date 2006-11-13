# $OpenBSD: Makefile,v 1.4 2006/11/13 13:01:37 steven Exp $

COMMENT=	"calm window manager"
DISTNAME=	cwm-3
CATEGORIES=	x11
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://monkey.org/~marius/cwm/

BUILD_DEPENDS=	pkgconfig-*::devel/pkgconfig

# BSD
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=		X11 Xext Xft Xrender c fontconfig freetype

USE_X11=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
