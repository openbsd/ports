# $OpenBSD: Makefile,v 1.2 2009/09/20 13:56:54 espie Exp $

COMMENT = race for the galaxy card game, automated player
CATEGORIES = games
HOMEPAGE = http://keldon.net/rftg/
DISTNAME = rftg-0.5.3
EXTRACT_SUFX = .tar.bz2
MASTER_SITES = http://warpcore.org/rftg/

# Licence: GPL
# official authorization from the game publisher (Rio Grande)
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes

CONFIGURE_STYLE = gnu

LIB_DEPENDS += gtk-x11-2.0,gdk_pixbuf-2.0,gdk-x11-2.0::x11/gtk+2

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender c expat fontconfig freetype
WANTLIB += m pixman-1 pthread-stubs xcb z
WANTLIB += atk-1.0 cairo gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += iconv intl pango-1.0 pangocairo-1.0 pangoft2-1.0 png


.include <bsd.port.mk>
