# $OpenBSD: Makefile,v 1.11 2009/04/06 07:40:30 landry Exp $

COMMENT =	open source web browser engine

V = 41894
DISTNAME =	WebKit-r${V}
PKGNAME =	webkit-${V}p0
CATEGORIES =	www
EXTRACT_SUFX =	.tar.bz2

HOMEPAGE =	http://webkit.org/
MASTER_SITES =	http://builds.nightly.webkit.org/files/trunk/src/

MAINTAINER =	Landry Breuil <gaston@gcu.info>

SHARED_LIBS =	webkit-1.0	0.0 \
		testnetscapeplugin	0.0

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

AUTOMAKE_VERSION =	1.9
AUTOCONF_VERSION =	2.59
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
		soup-2.4:libsoup->=2.26:devel/libsoup


BUILD_DEPENDS =	::devel/bison \
		::devel/gperf \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

pre-configure:
	cd ${WRKSRC} && AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

.include <bsd.port.mk>
