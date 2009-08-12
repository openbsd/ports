# $OpenBSD: Makefile,v 1.7 2009/08/12 22:01:56 naddy Exp $

COMMENT-main =	graphical tools for the MetaGeek Wi-spy spectrum analyser
COMMENT-utils =	tools for the MetaGeek Wi-spy spectrum analyser

V =		2009-02-R1
DISTNAME =	spectools-$V
PKGNAME =	spectrum-tools-$V

FULLPKGNAME-main =  spectrum-tools-${V:S/-//g}p0
FULLPKGNAME-utils = spectrum-tools-utils-${V:S/-//g}

CATEGORIES =	net

MASTER_SITES =	http://www.kismetwireless.net/code/

HOMEPAGE =	http://www.kismetwireless.net/spectools/

MAINTAINER =	Chris Kuethe <ckuethe@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MULTI_PACKAGES =	-main -utils

WANTLIB = 	c m pthread usb

WANTLIB-main =	${WANTLIB} \
		X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		iconv intl pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 \
		png pthread-stubs xcb z

WANTLIB-utils =	${WANTLIB} ncurses

LIB_DEPENDS =	:libusb-*:devel/libusb

LIB_DEPENDS-main +=	${LIB_DEPENDS} \
			gtk-x11-2.0::x11/gtk+2 \
			gdk-x11-2.0::x11/gtk+2 \
			gdk_pixbuf-2.0::x11/gtk+2

RUN_DEPENDS-main = 	:spectrum-tools-utils-*:net/spectrum-tools,-utils

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
USE_GMAKE =		Yes

NO_REGRESS =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/spectrum-tools
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/spectrum-tools

.include <bsd.port.mk>
