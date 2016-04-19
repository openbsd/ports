# $OpenBSD: Makefile,v 1.11 2016/04/19 22:36:58 awolk Exp $

COMMENT =	modal webkit-based browser inspired by vim

GH_ACCOUNT =	fanglingsu
GH_PROJECT =	vimb
GH_TAGNAME =	2.11

CATEGORIES =	www x11

HOMEPAGE =	http://fanglingsu.github.io/vimb/

MAINTAINER =	Frederic Cambus <fred@statdns.com>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += atk-1.0 c cairo gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += intl pango-1.0 pangocairo-1.0 soup-2.4

FLAVORS =	gtk3
FLAVOR ?=

.if ${FLAVOR} == "gtk3"
WANTLIB += cairo-gobject gdk-3 gtk-3 javascriptcoregtk-3.0 webkitgtk-3.0

LIB_DEPENDS =	www/webkit,gtk3

MAKE_FLAGS =	GTK=3
.else
WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender fontconfig freetype gdk-x11-2.0 gtk-x11-2.0
WANTLIB += javascriptcoregtk-1.0 pangoft2-1.0 webkitgtk-1.0 z

LIB_DEPENDS =	www/webkit
.endif

USE_GMAKE =	Yes

CFLAGS +=	-D_BSD_SOURCE
MAKE_ENV +=	EXAMPLEDIR="${PREFIX}/share/examples/vimb" MANDIR="${PREFIX}/man"

FAKE_FLAGS =	PREFIX="${TRUEPREFIX}"

do-patch:
	@sed -i 's,certs/ca-certificates.crt,cert.pem,' ${WRKSRC}/src/config.def.h

.include <bsd.port.mk>
