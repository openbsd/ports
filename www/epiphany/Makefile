# $OpenBSD: Makefile,v 1.13 2007/05/15 14:01:19 martynas Exp $

SHARED_ONLY=	Yes
COMMENT=	"extremely lightweight and simple web browser for gnome"

M=		2.18
V=		2.18.1
DISTNAME=	epiphany-${V}
CATEGORIES=	www

HOMEPAGE=	http://www.gnome.org/projects/epiphany/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/epiphany/$M/}

BUILD_DEPENDS=	:mozilla-firefox-devel->=2.0:www/mozilla-firefox,-devel
BUILD_DEPENDS+=	${RUN_DEPENDS}
RUN_DEPENDS=	:gnome-doc-utils->=0.3.2:x11/gnome/doc-utils \
		:gnome-icon-theme-*:x11/gnome/icon-theme \
		:gnome-themes-*:x11/gnome/themes \
		:iso-codes-*:devel/iso-codes \
		:scrollkeeper-*:textproc/scrollkeeper \
		:yelp-*:x11/gnome/yelp
LIB_DEPENDS=	gnome-desktop-2::x11/gnome/desktop \
		gnomeui-2.>=1400::x11/gnome/libgnomeui \
		mozilla-firefox/gtkembedmoz,mozilla-firefox/mozjs,mozilla-firefox/xpcom,mozilla-firefox/xpcom_core:mozilla-firefox->=2.0:www/mozilla-firefox \
		xml2.>=6.12::textproc/libxml \
		xslt.>=1::textproc/libxslt

MODULES=	devel/gettext

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcursor Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 \
		audiofile bonobo-2 bonobo-activation bonoboui-2 c cairo \
		crypto dbus-1 dbus-glib-1 esd expat fontconfig freetype \
		gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 glade-2.0 glib-2.0 \
		glitz gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2 \
		gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 jpeg \
		m nspr4 pango-1.0 pangocairo-1.0 pangoft2-1.0 plc4 \
		plds4 png popt pthread ssl startup-notification-1 util z

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--with-gecko=firefox \
		--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/epiphany \
		--disable-schemas-install
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/mozilla-firefox -L${LOCALBASE}/lib" \
		HOME=/tmp

SUBST_VARS+=	M

post-configure:
	rm -fr /tmp/.mozilla

.include <bsd.port.mk>
