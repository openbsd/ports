# $OpenBSD: Makefile,v 1.21 2013/10/11 23:51:54 naddy Exp $

COMMENT=		wm-dockapp; clock application with clock, date and fish

DISTNAME=		wmfishtime-1.23
REVISION=		4
CATEGORIES=     	x11 x11/windowmaker

HOMEPAGE=		http://www.ne.jp/asahi/linux/timecop/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}/software/

MODULES=		devel/gettext

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb z gdk_pixbuf-2.0 gdk-x11-2.0 gtk-x11-2.0

LIB_DEPENDS=		x11/gtk+2

MAKE_FLAGS=		CC="${CC}" \
			CFLAGS="${CFLAGS} -Wall `pkg-config --cflags gtk+-2.0`" \
			LIBS="`pkg-config --libs gtk+-2.0`"

NO_TEST=		Yes

do-install:
	$(INSTALL_PROGRAM) $(WRKBUILD)/wmfishtime $(PREFIX)/bin
	$(INSTALL_MAN) $(WRKBUILD)/wmfishtime.1 $(PREFIX)/man/man1

.include <bsd.port.mk>
