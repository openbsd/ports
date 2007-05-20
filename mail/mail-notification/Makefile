# $OpenBSD: Makefile,v 1.11 2007/05/20 13:22:31 jasper Exp $

COMMENT=		"mail notification for freedesktop.org-compliant system trays"
DISTNAME=		mail-notification-4.0
CATEGORIES=		mail	

HOMEPAGE=		http://www.nongnu.org/mailnotify/
	
MAINTAINER=		Thomas Delaet <thomas@delaet.org>	

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcursor Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 \
		audiofile bonobo-2 bonobo-activation bonoboui-2 c cairo \
		crypto dbus-1 dbus-glib-1 esd expat fam fontconfig \
		freetype gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 \
		glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 gnome-desktop-2 \
		gnome-keyring gnome-menu gnomecanvas-2 gnomeui-2 gnomevfs-2 \
		gobject-2.0 gthread-2.0 gtk-x11-2.0 jpeg m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 png popt pthread rpcsvc \
		ssl startup-notification-1 stdc++ util xml2 z

MASTER_SITES=		http://savannah.nongnu.org/download/mailnotify/

MODULES=		devel/gettext 
BUILD_DEPENDS=         :scrollkeeper-*:textproc/scrollkeeper \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
RUN_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper \
			:gnome-icon-theme-*:x11/gnome/icon-theme
LIB_DEPENDS=		notify::devel/libnotify \
			eel-2::x11/gnome/eel

USE_X11=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/mail-notification \
			--disable-schemas-install \
			--disable-evolution \

CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-patch: 
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mail-notification
	mv ${WRKINST}${SYSCONFDIR}/* ${PREFIX}/share/examples/mail-notification

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
