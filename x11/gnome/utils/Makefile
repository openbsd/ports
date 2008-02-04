# $OpenBSD: Makefile,v 1.22 2008/02/04 17:55:19 jasper Exp $

COMMENT=		GNOME utility programs

GNOME_PROJECT=		gnome-utils
GNOME_VERSION=		2.20.0.1
SHARED_LIBS +=  gdict-1.0      5.13      # .5.15
PKGNAME=		${DISTNAME}p0

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 audiofile bonobo-2 bonobo-activation \
		bonoboui-2 c cairo crypto dbus-1 dbus-glib-1 esd expat \
		fontconfig freetype gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 \
		glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 gnome-desktop-2 \
		gnome-keyring gnomecanvas-2 gnomeprint-2-2 gnomevfs-2 \
		gobject-2.0 gthread-2.0 gtk-x11-2.0 jpeg kvm m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre png popt pthread ssl \
		startup-notification-1 util xml2 z

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/${GNOME_PROJECT}/2.20/}

BUILD_DEPENDS=		:gnome-doc-utils-*:x11/gnome/doc-utils
LIB_DEPENDS=		gtop-2.0.>=7::devel/libgtop2 \
			gnomeui-2.>=1800::x11/gnome/libgnomeui \
			panel-applet-2::x11/gnome/panel \
			gnomeprintui-2-2::x11/gnome/libgnomeprintui
RUN_DEPENDS=		:fam-*:sysutils/fam \
			:scrollkeeper->=0.3.12:textproc/scrollkeeper

MODULES=		devel/gettext \
			x11/gnome

USE_X11=		Yes
DESKTOP_FILES=		Yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-schemas-install \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gnome-utils \
			--disable-hal \
			--with-grep="/usr/bin/grep"
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
