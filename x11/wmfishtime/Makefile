# $OpenBSD: Makefile,v 1.11 2010/03/24 12:05:55 jasper Exp $

COMMENT=		wm-dockapp; clock application with clock, date and fish

DISTNAME=		wmfishtime-1.23
PKGNAME=		${DISTNAME}p0
CATEGORIES=     	x11 x11/windowmaker

HOMEPAGE=		http://www.ne.jp/asahi/linux/timecop/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/software/

MODULES=		devel/gettext

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb z

LIB_DEPENDS=		gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2

MAKE_FLAGS=		CC="${CC}" \
			CFLAGS="${CFLAGS} -Wall `pkg-config --cflags gtk+-2.0`" \
			LIBS="`pkg-config --libs gtk+-2.0`"

USE_X11=		Yes
NO_REGRESS=		Yes

do-install:
	$(INSTALL_PROGRAM) $(WRKBUILD)/wmfishtime $(PREFIX)/bin
	$(INSTALL_MAN) $(WRKBUILD)/wmfishtime.1 $(PREFIX)/man/man1

.include <bsd.port.mk>
