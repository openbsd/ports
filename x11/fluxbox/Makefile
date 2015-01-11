# $OpenBSD: Makefile,v 1.77 2015/01/11 15:59:19 bcallah Exp $

COMMENT =	window manager based on the original Blackbox code
DISTNAME =	fluxbox-1.3.6
CATEGORIES =	x11

HOMEPAGE =	http://fluxbox.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# X11
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += Imlib2 X11 Xext Xft Xinerama Xpm Xrandr Xrender c fontconfig
WANTLIB += freetype fribidi m stdc++ z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=fluxbox/}

MODULES =	converters/libiconv

LIB_DEPENDS=	devel/fribidi \
		graphics/imlib2

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE =	Yes
USE_GROFF =	Yes

NO_TEST =	Yes

.include <bsd.port.mk>
