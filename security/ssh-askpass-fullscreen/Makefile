COMMENT=	good-looking ssh-agent pass-phrase dialog

DIST_TUPLE=	github	atj	ssh-askpass-fullscreen	v1.3	.
CATEGORIES=	security

# GPLv2
PERMIT_PACKAGE=	Yes

LIB_DEPENDS =	x11/gtk+2

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += harfbuzz intl pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread

CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16
SEPARATE_BUILD =	Yes

.include <bsd.port.mk>
