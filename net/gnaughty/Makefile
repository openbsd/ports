# $OpenBSD: Makefile,v 1.42 2017/08/08 21:24:47 jasper Exp $

COMMENT=		fast and easy porn downloader

DISTNAME=		gnaughty-1.2.6
CATEGORIES +=		net graphics biology productivity education
CATEGORIES +=		inputmethods benchmarks japanese geo
CATEGORIES +=		games
REVISION=		1

HOMEPAGE=		http://gnaughty.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://distfiles.nl/ \
			${MASTER_SITE_SOURCEFORGE:=gnaughty/}

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo curl fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 intl pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre xml2 z

MODULES=		devel/gconf2

LIB_DEPENDS=		devel/libglade2 \
			net/curl \
			textproc/libxml

RUN_DEPENDS=		devel/desktop-file-utils

MODGCONF2_SCHEMAS_DIR=	gnaughty

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

###
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
AUTOFUCK_ENV=		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			AUTOMAKE_VERSION=${AUTOMAKE_VERSION}
BUILD_DEPENDS +=	${MODGNU_AUTOMAKE_DEPENDS} \
			${MODGNU_AUTOCONF_DEPENDS}

pre-configure:
	cd ${WRKSRC} && ${SETENV} ${AUTOFUCK_ENV} autoreconf -fi
###

.include <bsd.port.mk>
