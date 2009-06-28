# $OpenBSD: Makefile,v 1.2 2009/06/28 21:46:38 sthen Exp $

COMMENT =	Amide a Medical Imaging Data Examiner

DISTNAME =	amide-0.9.1
PKGNAME =	${DISTNAME}p0
CATEGORIES =	graphics

HOMEPAGE =	http://amide.sourceforge.net/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =   Yes
PERMIT_PACKAGE_FTP =     Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =   Yes

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0
WANTLIB += c cairo crypto dbus-1 dbus-glib-1 expat fontconfig
WANTLIB += freetype gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread ssl stdc++ util xml2 z
WANTLIB += avahi-client avahi-common avahi-glib

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=amide/}

EXTRACT_SUFX =	.tgz

MODULES =	devel/gettext \
		textproc/intltool

BUILD_DEPENDS =	::devel/m4 \
		::x11/gnome/doc-utils
RUN_DEPENDS =	::devel/desktop-file-utils \
		::x11/gnome/yelp
LIB_DEPENDS =   gsl.>=7,gslcblas:gsl->=1.6:devel/gsl \
		gnomecanvas-2.>=1400::x11/gnome/libgnomecanvas \
		gnomevfs-2.>=2400::x11/gnome/vfs2 \
		mdc.>=2::graphics/xmedcon

USE_X11 =	Yes
USE_LIBTOOL =	Yes
USE_GMAKE =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include ${CFLAGS}" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PKG_CONFIG_PATH="${X11BASE}/lib/pkgconfig" \
			XMEDCON_CONFIG="${LOCALBASE}/bin/xmedcon-config"
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-scrollkeeper \
			--disable-xmedcontest \
			--disable-libfame \
			--disable-libdcmdata

NO_REGRESS =	Yes

post-extract:
	@rm -f ${WRKSRC}/src/ui_common.c.orig

.include <bsd.port.mk>
