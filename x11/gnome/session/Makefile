# $OpenBSD: Makefile,v 1.47 2008/10/28 13:44:32 ajacoutot Exp $

COMMENT=		GNOME session

GNOME_PROJECT=		gnome-session
GNOME_VERSION=		2.20.3
PKGNAME=		${DISTNAME}p15
CATEGORIES=		x11

# GPLv2/LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 audiofile bonobo-2 bonobo-activation \
		bonoboui-2 c cairo crypto dbus-1 dbus-glib-1 esd expat \
		fontconfig freetype gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 \
		glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2 \
		gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 jpeg \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png popt \
		pthread ssl util wrap xml2 z

MODULES=	devel/gettext \
		x11/gnome

BUILD_DEPENDS=	:scrollkeeper-*:textproc/scrollkeeper \
		:control-center2-*:x11/gnome/controlcenter2
LIB_DEPENDS=	gnomeui-2::x11/gnome/libgnomeui

# Here we hang all the additional ports that will make up a satisfying
# GNOME user experience :)
RUN_DEPENDS+=		::textproc/gnome-spell \
			::x11/gnome/alacarte \
			::x11/gnome/applets2 \
			::x11/gnome/backgrounds \
			::x11/gnome/controlcenter2 \
			::x11/gnome/devhelp \
			::x11/gnome/file-roller \
			::x11/gnome/gdm \
			::x11/gnome/gedit \
			::x11/gnome/media \
			::x11/gnome/eog \
			::x11/gnome/terminal \
			::x11/gnome/themes \
			::x11/gnome/themes-extras \
			::x11/gnome/utils \
			::x11/gnome/yelp \
			::x11/xscreensaver,no_gle \
			::x11/tango-icon-theme 
#			::x11/gnome/bug-buddy

USE_X11=		Yes
DESKTOP_FILES=		Yes

CONFIGURE_ARGS+= 	--disable-rebuilds \
			--enable-esd \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gnome-session
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

post-install:
	@sed -e 's,!!PREFIX!!,${TRUEPREFIX},' ${FILESDIR}/README.OpenBSD > \
		${WRKBUILD}/README.OpenBSD
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnome-session
	${INSTALL_DATA} ${WRKBUILD}/README.OpenBSD \
		${PREFIX}/share/doc/gnome-session

.include <bsd.port.mk>
