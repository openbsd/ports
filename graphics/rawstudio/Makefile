# $OpenBSD: Makefile,v 1.7 2009/05/28 19:12:50 sthen Exp $

COMMENT =	tool for working with RAW images

DISTNAME =	rawstudio-1.2

CATEGORIES =	graphics

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE =	http://rawstudio.org
MASTER_SITES =	${HOMEPAGE}/files/release/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib

MODULES =	devel/gettext

WANTLIB =       X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
                Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
                fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0 \
                gobject-2.0 gthread-2.0 m pango-1.0 pangocairo-1.0 \
                pangoft2-1.0 pixman-1 pthread stdc++ z

LIB_DEPENDS +=	dbus-1::x11/dbus \
		exiv2::graphics/exiv2 \
		gconf-2::devel/gconf2 \
		gtk-x11-2.0,gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2 \
		jpeg::graphics/jpeg \
		lcms::graphics/lcms \
		ORBit-2::devel/ORBit2 \
		png::graphics/png \
		tiff::graphics/tiff \
		xml2::textproc/libxml

RUN_DEPENDS =	:desktop-file-utils-*:devel/desktop-file-utils \
		::x11/gtk2-clearlooks-engine

NO_REGRESS =	Yes

.include <bsd.port.mk>
