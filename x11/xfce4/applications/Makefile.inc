V?=	4.0.5

CATEGORIES?=	x11 x11/xfce4 x11/xfce4/applications

MASTER_SITES?=	http://hannelore.f1.fhtw-berlin.de/mirrors/xfce4/xfce-${V}/src/
DIST_SUBDIR?=	xfce4

HOMEPAGE?=	http://xfce.org/index.php?page=overview

MAINTAINER?=	Jolan Luff <jolan@openbsd.org>

# BSD:
#	xfce4-session
# GPL:
#	xfcalendar
#	xfce4-iconbox
#	xfce4-menueditor
PERMIT_DISTFILES_CDROM?=Yes
PERMIT_DISTFILES_FTP?=	Yes
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes

USE_X11?=	Yes

BUILD_DEPENDS?=	:pkgconfig-*:devel/pkgconfig \
		:xfce-mcs-manager-*:x11/xfce4/desktop/xfce-mcs-manager
RUN_DEPENDS?=	:xfce-mcs-manager-*:x11/xfce4/desktop/xfce-mcs-manager

CONFIGURE_STYLE?=gnu
CONFIGURE_ENV?=	CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"

WANTLIB+=	ICE SM X11 Xcursor Xext Xft Xinerama Xrender atk-1.0.0.0 c \
		fontconfig freetype gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 \
		glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 gtk-x11-2.0.0.0 \
		iconv intl m pango-1.0.0.0 pangoft2-1.0.0.0 pangox-1.0.0.0 \
		pangoxft-1.0.0.0 xfce4util xfcegui4
