# $OpenBSD: Makefile,v 1.14 2009/06/01 05:51:31 landry Exp $

COMMENT =	open source web browser engine

V = 1.1.8
DISTNAME =	webkit-${V}
PKGNAME =	webkit-${V}v0
CATEGORIES =	www

HOMEPAGE =	http://webkitgtk.org/
MASTER_SITES =	${HOMEPAGE}

MAINTAINER =	Landry Breuil <gaston@gcu.info>

SHARED_LIBS =	webkit-1.0	0.2

# LGPLv2 / BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

VMEM_WARNING =	Yes

USE_X11 =	Yes
USE_GMAKE =	Yes
USE_LIBTOOL =	Yes

MODULES =	converters/libiconv \
		textproc/intltool \
		gcc4

MODGCC4_ARCHES =*
MODGCC4_LANGS =	c c++

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--disable-video

CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib -lX11"

MAKE_FILE =	GNUmakefile

WANTLIB =	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender Xt atk-1.0 c \
		expat fontconfig freetype gcrypt gio-2.0 glib-2.0 glitz gmodule-2.0 \
		gnutls gobject-2.0 gpg-error gthread-2.0 intl jpeg m \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pthread \
		tasn1 z cairo pixman-1 png xml2

LIB_DEPENDS =	gtk-x11-2.0,gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2,-main \
		icudata,icui18n,icuuc::textproc/icu4c \
		sqlite3::databases/sqlite3 \
		xslt::textproc/libxslt \
		enchant::textproc/enchant \
		soup-2.4:libsoup->=2.26:devel/libsoup


BUILD_DEPENDS =	::devel/bison \
		::devel/gperf

.include <bsd.port.mk>
