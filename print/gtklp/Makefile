# $OpenBSD: Makefile,v 1.25 2013/06/17 19:28:37 ajacoutot Exp $

COMMENT=	GTK+2 frontend to CUPS

DISTNAME=	gtklp-1.3.0
CATEGORIES=	print sysutils x11
REVISION=	1

EXTRACT_SUFX=	.src.tar.gz

HOMEPAGE=	http://gtklp.sirtobi.com/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender asn1 atk-1.0 avahi-client
WANTLIB += avahi-common c cairo crypto cups dbus-1 expat ffi
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gssapi gthread-2.0
WANTLIB += gtk-x11-2.0 harfbuzz krb5 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs ssl xcb xcb-render xcb-shm z
WANTLIB += com_err graphite2 heimbase heimntlm hx509 roken wind

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gtklp/}

MODULES=	devel/gettext

LIB_DEPENDS=	x11/gtk+2 \
		print/cups,-libs

# package is only useful if cups is installed
RUN_DEPENDS +=	print/cups

USE_GMAKE=	Yes

AUTOMAKE_VERSION=1.11
AUTOCONF_VERSION=2.69
# libtoolize(1)
BUILD_DEPENDS+=	devel/libtool \
		${MODGNU_AUTOMAKE_DEPENDS} \
		${MODGNU_AUTOCONF_DEPENDS}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

post-extract:
	find ${WRKSRC} -type f -name '*.orig' -exec rm {} \;

pre-configure:
	cd ${WRKSRC} && \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		autoreconf -i --force

.include <bsd.port.mk>
