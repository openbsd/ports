COMMENT=		wm-dockapp; clock application with clock, date and fish

DISTNAME=		wmfishtime-1.24
REVISION=		4
CATEGORIES=     	x11 x11/windowmaker

HOMEPAGE=		http://www.ne.jp/asahi/linux/timecop/

# GPL
PERMIT_PACKAGE=	Yes

SITES=			${HOMEPAGE}/software/

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += harfbuzz intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread
WANTLIB += z

LIB_DEPENDS=		devel/gettext,-runtime \
			x11/gtk+2

MAKE_FLAGS=		CC="${CC}" \
			CFLAGS="${CFLAGS} -Wall `pkg-config --cflags gtk+-2.0`" \
			LIBS="`pkg-config --libs gtk+-2.0` -lm"

NO_TEST=		Yes

do-install:
	$(INSTALL_PROGRAM) $(WRKBUILD)/wmfishtime $(PREFIX)/bin
	$(INSTALL_MAN) $(WRKBUILD)/wmfishtime.1 $(PREFIX)/man/man1

.include <bsd.port.mk>
