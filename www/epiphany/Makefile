# $OpenBSD: Makefile,v 1.36 2009/06/08 16:58:16 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	GNOME web browser based on mozilla

GNOME_PROJECT=	epiphany
GNOME_VERSION=	2.24.3
PKGNAME=	${DISTNAME}p6

M=		${GNOME_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}
SUBST_VARS=	M
CATEGORIES=	www

HOMEPAGE=	http://www.gnome.org/projects/epiphany/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS} \
		:xulrunner-devel->=1.8.1:devel/xulrunner,-devel
RUN_DEPENDS=	:gnome-icon-theme-*:x11/gnome/icon-theme \
		:gnome-themes-*:x11/gnome/themes \
		:iso-codes-*:devel/iso-codes \
		::x11/gnome/py-gnome
LIB_DEPENDS=	${MODPY_LIB_DEPENDS} \
		gnome-desktop-2::x11/gnome/desktop \
		gnomeui-2.>=1400::x11/gnome/libgnomeui \
		xulrunner/gtkembedmoz,xulrunner/mozjs,xulrunner/xpcom,xulrunner/xul:xulrunner->=1.8.1:devel/xulrunner \
		xml2.>=6.12::textproc/libxml \
		xslt.>=1::textproc/libxslt \
		execinfo::devel/libexecinfo \
		canberra,canberra-gtk::audio/libcanberra \
		notify.>=2::devel/libnotify

MODULES=	devel/gettext \
		lang/python \
		x11/gnome \
		devel/gconf2

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 bonobo-2 \
		bonobo-activation bonoboui-2 c cairo crypto dbus-1 \
		dbus-glib-1 expat fontconfig freebl3 freetype \
		gailutil gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 \
		glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 \
		gnome-keyring gnomecanvas-2 gnomevfs-2 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 ltdl m nspr4 nss3 nssckbi ogg \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		plc4 plds4 png popt pthread smime3 softokn3 ssl \
		ssl3 startup-notification-1 stdc++ util vorbis \
		vorbisfile z

USE_X11=	Yes
LIBTOOL_FLAGS=	--tag=disable-static
DESKTOP_FILES=	Yes
MODGNOME_HELP_FILES= Yes
MODGCONF2_SCHEMAS_DIR= epiphany

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static \
		--with-engine=mozilla \
		--with-gecko=xulrunner \
		--enable-python \
		--disable-scrollkeeper \
		--disable-gtk-doc \
		--disable-zeroconf
# xulrunner needs to be compiled with spell-check support (enchant)
CONFIGURE_ARGS+= --disable-spell-checker

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/nss -I${LOCALBASE}/include -I${LOCALBASE}/xulrunner/include/pipnss/ -I${X11BASE}/include" \
		LDFLAGS="-Wl,-rpath-link,${LOCALBASE}/lib/ -Wl,-rpath-link,${X11BASE}/lib/ -L${LOCALBASE}/lib -lfreebl3 -lnss3 -lnssckbi -lsmime3 -lsoftokn3 -lssl3 -pthread -lexecinfo -L${LOCALBASE}/xulrunner" \
		HOME=/tmp

.include <bsd.port.mk>
