# $OpenBSD: Makefile,v 1.9 2008/11/24 23:29:09 jasper Exp $

COMMENT=		GTK2 desktop calculator

GNOME_PROJECT=		gcalctool
GNOME_VERSION=		5.24.2

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 \
		glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pixman-1 png pthread z

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		::devel/bison \
			::devel/gconf2 \
			::textproc/scrollkeeper \
			:gnome-doc-utils->=0.3.2:x11/gnome/doc-utils
LIB_DEPENDS=		gnomeui-2::x11/gnome/libgnomeui

MODGNOME_HELP_FILES=	Yes
USE_X11=		Yes
DESKTOP_FILES=		Yes
USE_LIBTOOL=		No
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gcalctool/ \
			--disable-schemas-install

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
