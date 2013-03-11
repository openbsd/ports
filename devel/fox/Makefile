# $OpenBSD: Makefile,v 1.23 2013/03/11 10:50:03 espie Exp $

COMMENT =	C++ toolkit for GUI
CATEGORIES =	devel

DISTNAME =	fox-1.6.37
REVISION =	0

SHARED_LIBS +=	FOX-1.6              2.0      # .0.37
SHARED_LIBS +=	CHART-1.6            1.0      # .0.28
MASTER_SITES =	${HOMEPAGE}/ftp/
HOMEPAGE =	http://www.fox-toolkit.org/
MAINTAINER =	Marc Espie <espie@openbsd.org>

CONFIGURE_STYLE =	gnu

LIB_DEPENDS =	archivers/bzip2 \
		graphics/jpeg \
		graphics/png \
		graphics/tiff

CONFIGURE_ENV += \
	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
	LDFLAGS="-L${LOCALBASE}/lib" 
CONFIGURE_ARGS += \
	--x-includes=${X11BASE}/include \
	--x-libraries=${X11BASE}/lib \
	--with-xft

# LGPL or looser
PERMIT_PACKAGE_CDROM = Yes
USE_LIBTOOL =	Yes
USE_GROFF =	Yes

FOX =		fox-1.6
SUBST_VARS =	FOX

WANTLIB =	GL GLU X11 Xau Xcursor Xdmcp Xext Xfixes Xrender Xrandr c m \
		stdc++ z pthread Xft expat fontconfig freetype \
		pthread-stubs xcb bz2 jpeg png tiff Xdamage Xxf86vm drm

.include <bsd.port.mk>
