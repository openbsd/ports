# $OpenBSD: Makefile,v 1.2 2010/07/17 13:59:44 kili Exp $

COMMENT =		modern tiling window manager

DISTNAME =		bluetile-0.4.1
CATEGORIES =		x11
HOMEPAGE =		http://www.bluetile.org/

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
			Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
			fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
			gio-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0 gmp \
			gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 \
			pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread \
			pthread-stubs util xcb xcb-render xcb-render-util \
			xml2 z

MODULES =		lang/ghc converters/libiconv devel/gettext
MODGHC_BUILD =		cabal hackage nort

BUILD_DEPENDS =		:hs-X11->=1.4:x11/hs-X11 \
			::devel/hs-glade \
			:hs-xmonad-contrib->=0.9.1:x11/hs-xmonad-contrib \
			:xmonad-lib->=0.9.1:x11/xmonad,-lib

LIB_DEPENDS =		::devel/atk \
			::devel/glib2 \
			::devel/gmp \
			::devel/libglade2 \
			::devel/pango \
			::graphics/cairo \
			::graphics/glitz \
			::graphics/png \
			::textproc/libxml \
			::x11/gtk+2

USE_X11 =		Yes

post-install:
	@${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	@${INSTALL_MAN} ${WRKSRC}/man/bluetile.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
