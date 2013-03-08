# $OpenBSD: Makefile,v 1.43 2013/03/08 18:33:21 naddy Exp $

COMMENT=	GTK-based scientific calculator

DISTNAME=	galculator-2.1
CATEGORIES=	math
HOMEPAGE=	http://galculator.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=galculator/}
EXTRACT_SUFX=	.tar.bz2

WANTLIB=	GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender Xxf86vm \
		atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject dbus-1 \
		drm expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0 \
		gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-3 \
		harfbuzz icudata icule icuuc m \
		pango-1.0 z pangocairo-1.0 pcre png \
		pangoft2-1.0 pixman-1 pthread pthread-stubs stdc++ xcb \
		xcb-render xcb-shm

MODULES=	devel/gettext \
		textproc/intltool

RUN_DEPENDS=	devel/desktop-file-utils
LIB_DEPENDS=	x11/gtk+3

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
