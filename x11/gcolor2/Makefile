# $OpenBSD: Makefile,v 1.4 2010/10/24 21:15:32 ajacoutot Exp $
#
COMMENT =		color selector in GTK2

DISTNAME =		gcolor2-0.4
REVISION =		1
CATEGORIES =		x11

HOMEPAGE =		http://gcolor2.sourceforge.net/

MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

#GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB = GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi \
	   Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo.>=9 drm expat \
	   fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
	   gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 iconv.>=6 intl.>=5 \
	   m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre.>=2 pixman-1 png.>=10 \
	   pthread pthread-stubs xcb xcb-render xcb-shm z

LIB_DEPENDS = ::x11/gtk+2

MODULES =		devel/gettext \
			textproc/intltool
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=gcolor2/}

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
