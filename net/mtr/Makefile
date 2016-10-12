# $OpenBSD: Makefile,v 1.60 2016/10/12 11:39:27 sthen Exp $

COMMENT=	Matt's traceroute - network diagnostic tool#'

DISTNAME=	mtr-0.87
CATEGORIES=	net

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE=	http://www.bitwizard.nl/mtr/

# GPLv2+
PERMIT_PACKAGE_CDROM=	yes

WANTLIB=	lib/libbind/bind c m ncurses
LIB_DEPENDS=	net/libbind

MASTER_SITES=	ftp://ftp.bitwizard.nl/mtr/

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/bind" \
		LDFLAGS="-L${LOCALBASE}/lib -L${LOCALBASE}/lib/libbind -Wl,-rpath,${LOCALBASE}/lib/libbind -lbind"

FLAVORS=	gtk
FLAVOR?=
.if ${FLAVOR} == "gtk"
CONFIGURE_ARGS+=	--with-gtk-prefix=${LOCALBASE}
LIB_DEPENDS+=		x11/gtk+2
WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 intl pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread pthread-stubs xcb xcb-render xcb-shm z
.else
CONFIGURE_ARGS+=	--without-glib \
			--without-gtk
.endif

# need to regen for now, upstream built their automake files without the gtk aclocal files
AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.11
BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

post-patch:
	cd ${WRKSRC}; AUTOCONF_VERSION=${AUTOCONF_VERSION} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./bootstrap.sh
	touch ${WRKSRC}/config.h.in

.include <bsd.port.mk>
