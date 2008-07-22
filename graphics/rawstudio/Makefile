# $OpenBSD: Makefile,v 1.2 2008/07/22 07:36:26 sthen Exp $

COMMENT =	tool for working with RAW images

DISTNAME =	rawstudio-1.0
PKGNAME =	${DISTNAME}p0

CATEGORIES =	graphics

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE =	http://rawstudio.org
MASTER_SITES =	${HOMEPAGE}/files/release/

# GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CPPFLAGS=-I${LOCALBASE}/include
CONFIGURE_ENV +=	LDFLAGS=-L${LOCALBASE}/lib

MODULES +=		converters/libiconv devel/gettext

WANTLIB +=		X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB +=		Xi Xinerama Xrandr Xrender c expat fontconfig freetype
WANTLIB +=		m pixman-1 pthread stdc++ z

LIB_DEPENDS += 		atk-1.0::devel/atk \
			cairo::graphics/cairo \
			dbus-1::x11/dbus \
			gconf-2::devel/gconf2 \
			glib-2.0,gmodule-2.0,gobject-2.0,gthread-2.0::devel/glib2 \
			glitz::graphics/glitz \
			gtk-x11-2.0,gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2 \
			jpeg::graphics/jpeg \
			lcms::graphics/lcms \
			ORBit-2::devel/ORBit2 \
			pango-1.0,pangocairo-1.0,pangoft2-1.0::devel/pango \
			png::graphics/png \
			tiff::graphics/tiff \
			xml2::textproc/libxml

NO_REGRESS =		Yes

.include <bsd.port.mk>
