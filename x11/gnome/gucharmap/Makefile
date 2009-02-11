# $OpenBSD: Makefile,v 1.17 2009/02/11 15:47:50 jasper Exp $

COMMENT=		Unicode character map for the GNOME project

GNOME_PROJECT=		gucharmap
GNOME_VERSION=		2.24.3
PKGNAME=		${DISTNAME}p1
SHARED_LIBS +=	gucharmap            1.0      # .7.0

HOMEPAGE=		http://live.gnome.org/Gucharmap

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 \
		dbus-glib-1 expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre pixman-1 png pthread z

BUILD_DEPENDS=		:gnome-doc-utils-*:x11/gnome/doc-utils
LIB_DEPENDS=		gconf-2::devel/gconf2
RUN_DEPENDS=		::textproc/rarian

MODULES=		devel/gettext \
			x11/gnome

USE_X11=		Yes
MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-gconf-schema-file-dir="${LOCALBASE}/share/schemas/gucharmap" \
			--disable-schemas-install \
			--disable-scrollkeeper \
			--disable-python-bindings
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
