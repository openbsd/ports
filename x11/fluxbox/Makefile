# $OpenBSD: Makefile,v 1.72 2013/03/11 11:46:09 espie Exp $

COMMENT=		window manager based on the original Blackbox code

DISTNAME=		fluxbox-1.3.3

REVISION=		3

CATEGORIES=		x11

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fluxbox/}

HOMEPAGE=		http://fluxbox.org/

MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# X11
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		converters/libiconv

WANTLIB=		ICE Imlib2 SM X11 Xext Xft Xinerama \
			Xpm Xrandr Xrender c expat fontconfig \
			freetype fribidi m stdc++ z

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
USE_GROFF =		Yes

NO_TEST=		Yes

LIB_DEPENDS=		devel/fribidi>=0.19.2 \
			graphics/imlib2

.include <bsd.port.mk>
