# $OpenBSD: Makefile,v 1.76 2014/05/24 14:55:16 bcallah Exp $

COMMENT=		window manager based on the original Blackbox code

DISTNAME=		fluxbox-1.3.5
REVISION=		1

CATEGORIES=		x11

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fluxbox/}

HOMEPAGE=		http://fluxbox.org/

MAINTAINER=		Brian Callahan <bcallah@openbsd.org>

# X11
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		converters/libiconv

WANTLIB=		ICE Imlib2 SM X11 Xext Xft Xinerama \
			Xpm Xrandr Xrender c fontconfig \
			freetype fribidi m stdc++ z

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE=		Yes
USE_GROFF =		Yes

NO_TEST=		Yes

LIB_DEPENDS=		devel/fribidi>=0.19.2 \
			graphics/imlib2

.include <bsd.port.mk>
