# $OpenBSD: Makefile,v 1.1.1.1 2014/08/19 22:52:41 bcallah Exp $

V =		2.6
COMMENT =	modal webkit-based browser inspired by vim
DISTNAME =	vimb-${V}
CATEGORIES =	www x11

HOMEPAGE =	http://fanglingsu.github.io/vimb/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += atk-1.0 c cairo fontconfig freetype gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pthread soup-2.4 z

GH_ACCOUNT =	fanglingsu
GH_PROJECT =	vimb
GH_TAGNAME =	${V}
GH_COMMIT =	74fb0a8af749c6a0ab6a99f31750368829e4c612

FLAVORS =	gtk3
FLAVOR ?=

MODULES =	devel/gettext

.if ${FLAVOR} == "gtk3"
WANTLIB += cairo-gobject gdk-3 gtk-3 javascriptcoregtk-3.0
WANTLIB += webkitgtk-3.0

LIB_DEPENDS =	www/webkit,gtk3

MAKE_FLAGS =	GTK=3
.else
WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender gdk-x11-2.0 gtk-x11-2.0 javascriptcoregtk-1.0
WANTLIB += webkitgtk-1.0

LIB_DEPENDS =	www/webkit
.endif

USE_GMAKE =	Yes
USE_GROFF =	Yes

FAKE_FLAGS =	BINDIR=${PREFIX}/bin \
		MANDIR1=${PREFIX}/man/man1

.include <bsd.port.mk>
