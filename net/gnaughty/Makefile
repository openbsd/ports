# $OpenBSD: Makefile,v 1.49 2019/01/22 23:04:22 ajacoutot Exp $

COMMENT=		fast and easy porn downloader

DISTNAME=		gnaughty-1.2.6
CATEGORIES +=		net graphics biology productivity education
CATEGORIES +=		inputmethods benchmarks japanese geo
CATEGORIES +=		games multimedia
REVISION=		6

HOMEPAGE=		http://gnaughty.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo curl fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 intl pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pthread xml2 z

MASTER_SITES=		https://distfiles.nl/ \
			${MASTER_SITE_SOURCEFORGE:=gnaughty/}

MODULES=		devel/gconf2

LIB_DEPENDS=		devel/libglade2 \
			net/curl \
			textproc/libxml

RUN_DEPENDS=		devel/desktop-file-utils

MODGCONF2_SCHEMAS_DIR=	gnaughty

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# for obvious reasons
TEST_IS_INTERACTIVE=	Yes

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
AUTOFUCK_ENV=		${AUTOCONF_ENV}
BUILD_DEPENDS +=	${MODGNU_AUTOMAKE_DEPENDS} \
			${MODGNU_AUTOCONF_DEPENDS}

do-gen:
	cd ${WRKSRC} && env -i ${AUTOFUCK_ENV} autoreconf -fi

.include <bsd.port.mk>
