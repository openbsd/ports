# $OpenBSD: Makefile,v 1.9 2011/04/04 22:42:15 kili Exp $

COMMENT =		modern tiling window manager

DISTNAME =		bluetile-0.5.3
REVISION =		1
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
			gio-2.0 glade-2.0 glib-2.0 gmodule-2.0 gmp \
			gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 \
			pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread \
			pthread-stubs util xcb xcb-render \
			xml2 z GL Xft Xxf86vm drm xcb-shm

MODULES =		devel/gettext\
			lang/ghc
MODGHC_BUILD =		cabal hackage nort

BUILD_DEPENDS =		devel/hs-ConfigFile \
			devel/hs-glade \
			devel/hs-regex-compat \
			x11/hs-X11>=1.4 \
			x11/hs-X11-xft \
			x11/hs-xmonad-contrib>=0.9.1 \
			x11/xmonad,-lib>=0.9.1

LIB_DEPENDS =		devel/gmp \
			devel/libglade2

USE_GROFF =		Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/man/bluetile.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
