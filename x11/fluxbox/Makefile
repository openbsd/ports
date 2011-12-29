# $OpenBSD: Makefile,v 1.61 2011/12/29 16:15:53 dcoppa Exp $

COMMENT=		window manager based on the original Blackbox code

DISTNAME=		fluxbox-1.3.2

REVISION=		3

CATEGORIES=		x11

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fluxbox/}

HOMEPAGE=		http://fluxbox.org/

MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# X11
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		converters/libiconv

WANTLIB=		ICE Imlib2 SM X11 Xau Xdmcp Xext Xft Xinerama \
			Xpm Xrandr Xrender c expat fontconfig freetype \
			fribidi m pthread-stubs stdc++ xcb z

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
USE_GROFF =		Yes

NO_REGRESS=		Yes

SEPARATE_BUILD=		simple

LIB_DEPENDS=		devel/fribidi>=0.19.2 \
			graphics/imlib2

.include <bsd.port.mk>
