# $OpenBSD: Makefile,v 1.4 2009/06/24 22:44:45 sthen Exp $

COMMENT = 			seam-carving smart rescale gimp plugin
CATEGORIES =			graphics

HOMEPAGE = 			http://liquidrescale.wikidot.com/
DISTNAME = 			gimp-lqr-plugin-0.4.0-4
PKGNAME = 			gimp-lqr-plugin-0.4.0.4p0
WRKDIST =			${WRKDIR}/gimp-lqr-plugin-0.4.0
MASTER_SITES =			${HOMEPAGE}local--files/en:download-page/

# GPLv2
PERMIT_PACKAGE_FTP = 		Yes
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_DISTFILES_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes

MODULES =			textproc/intltool

CONFIGURE_STYLE =		gnu

LIB_DEPENDS =			lqr-1::graphics/liblqr \
				gimp-2.0,gimpbase-2.0,gimpcolor-2.0,gimpconfig-2.0,gimpmath-2.0,gimpmodule-2.0,gimpui-2.0,gimpwidgets-2.0::graphics/gimp/stable

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender c expat fontconfig freetype
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 iconv
WANTLIB += intl m pixman-1 pthread z
WANTLIB += atk-1.0 cairo gdk-x11-2.0 gdk_pixbuf-2.0 glitz gtk-x11-2.0
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 png
WANTLIB += gio-2.0

.include <bsd.port.mk>
