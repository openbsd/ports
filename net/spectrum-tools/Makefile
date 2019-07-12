# $OpenBSD: Makefile,v 1.24 2019/07/12 20:48:49 sthen Exp $

COMMENT-main =	graphical tools for the MetaGeek Wi-spy spectrum analyser
COMMENT-utils =	tools for the MetaGeek Wi-spy spectrum analyser

V =		2011-08-R1
DISTNAME =	spectools-$V
PKGNAME =	spectrum-tools-$V

FULLPKGNAME-main =  spectrum-tools-${V:S/-//g}
FULLPKGNAME-utils = spectrum-tools-utils-${V:S/-//g}

REVISION-main=	4
REVISION-utils= 1

CATEGORIES =	net

MASTER_SITES =	http://www.kismetwireless.net/code/

HOMEPAGE =	http://www.kismetwireless.net/spectools/

# GPLv2+
PERMIT_PACKAGE =	Yes

MULTI_PACKAGES =	-main -utils

cWANTLIB =	c m pthread usb

WANTLIB-main =	${cWANTLIB} \
		X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama \
		Xrandr Xrender atk-1.0 cairo fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0 \
		intl pango-1.0 pangocairo-1.0 pangoft2-1.0 z

WANTLIB-utils =	${cWANTLIB} curses

LIB_DEPENDS-utils =	devel/libusb-compat

LIB_DEPENDS-main =	devel/libusb-compat \
			x11/gtk+2

RUN_DEPENDS-main =	net/spectrum-tools,-utils
RUN_DEPENDS-utils =	# empty

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			CFLAGS="${CFLAGS} -fgnu89-inline -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
USE_GMAKE =		Yes

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/spectrum-tools
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/spectrum-tools

.include <bsd.port.mk>
