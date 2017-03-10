# $OpenBSD: Makefile,v 1.37 2017/03/10 18:49:43 ajacoutot Exp $

COMMENT=		GTK+ frontend to CUPS

DISTNAME=		gtklp-1.3.3
EXTRACT_SUFX=		.src.tar.gz

CATEGORIES=		print sysutils x11

HOMEPAGE=		http://gtklp.sirtobi.com/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 avahi-client avahi-common c
WANTLIB += cairo cups dbus-1 expat ffi fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz
WANTLIB += hogweed iconv idn2 intl m nettle p11-kit pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs tasn1 unistring xcb xcb-render xcb-shm
WANTLIB += z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gtklp/}

LIB_DEPENDS=		print/cups,-libs \
			x11/gtk+2

# package is only useful if cups is installed
RUN_DEPENDS +=		print/cups

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu

AUTOMAKE_VERSION=	1.15
AUTOCONF_VERSION=	2.69
BUILD_DEPENDS +=	${MODGNU_AUTOMAKE_DEPENDS} \
			${MODGNU_AUTOCONF_DEPENDS} \
			devel/gettext-tools \
			devel/libtool # libtoolize(1)

post-extract:
	rm ${WRKSRC}/po/de.po.orig

pre-configure:
	cd ${WRKSRC} && \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		autoreconf -fi

.include <bsd.port.mk>
