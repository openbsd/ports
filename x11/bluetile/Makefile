# $OpenBSD: Makefile,v 1.20 2013/06/17 10:07:40 dcoppa Exp $

COMMENT =		modern tiling window manager

DISTNAME =		bluetile-0.6
REVISION =		3
CATEGORIES =		x11
HOMEPAGE =		http://www.bluetile.org/

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xft Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0
WANTLIB += glib-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread pthread-stubs util xcb xcb-render xcb-shm xml2
WANTLIB += z

MODULES =		devel/gettext\
			lang/ghc
MODGHC_BUILD =		cabal hackage nort

BUILD_DEPENDS =		devel/hs-ConfigFile \
			devel/hs-glade \
			devel/hs-mtl \
			devel/hs-regex-compat \
			x11/hs-X11>=1.4 \
			x11/hs-X11-xft \
			x11/hs-xmonad-contrib>=0.10 \
			x11/xmonad,-lib>=0.10

LIB_DEPENDS =		devel/libglade2

post-install:
	${INSTALL_MAN} ${WRKSRC}/man/bluetile.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
