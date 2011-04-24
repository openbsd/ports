# $OpenBSD: Makefile,v 1.51 2011/04/24 17:32:23 dcoppa Exp $

COMMENT=		window manager based on the original Blackbox code

DISTNAME=		fluxbox-1.3.1

CATEGORIES=		x11

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fluxbox/}

HOMEPAGE=		http://fluxbox.org/

MAINTAINER=		David Krause <david@openbsd.org>

# X11
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		converters/libiconv

WANTLIB=		ICE Imlib2 SM X11 Xau Xdmcp Xext Xft Xinerama \
			Xpm Xrandr Xrender c expat fontconfig freetype \
			fribidi m pthread-stubs stdc++ xcb z

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.67
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
USE_GROFF =		Yes

NO_REGRESS=		Yes

SEPARATE_BUILD=		simple

LIB_DEPENDS=		devel/fribidi \
			graphics/imlib2

.include <bsd.port.mk>
