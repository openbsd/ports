# $OpenBSD: Makefile,v 1.7 2006/09/18 11:50:40 espie Exp $

COMMENT=		"mail notification for freedesktop.org-compliant system trays"
DISTNAME=		mail-notification-1.0
PKGNAME=		${DISTNAME}p2
CATEGORIES=		mail	

HOMEPAGE=		http://www.nongnu.org/mailnotify/
	
MAINTAINER=		Thomas Delaet <thomas@delaet.org>	

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=		http://savannah.nongnu.org/download/mailnotify/

MODULES=		devel/gettext 
BUILD_DEPENDS+=         :pkgconfig-*:devel/pkgconfig \
			:scrollkeeper-*:textproc/scrollkeeper \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
RUN_DEPENDS+=		:scrollkeeper-*:textproc/scrollkeeper \
			:gnome-icon-theme-*:x11/gnome/icon-theme
LIB_DEPENDS+=		eel-2::x11/gnome/eel
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=        --sysconfdir="${CONFDIR}"
CONFIGURE_ARGS+=	--disable-schemas-install \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/mail-notification \
			--disable-mime --disable-sasl --disable-gmail
CPPFLAGS+=		-I${LOCALBASE}/include
LDFLAGS+=		-L${LOCALBASE}/lib
CONFIGURE_ENV+=		CPPFLAGS="${CPPFLAGS}" LDFLAGS="${LDFLAGS}"

CONFDIR=		${SYSCONFDIR}/gnome
SUBST_VARS=		CONFDIR

WANTLIB=		pthread ICE c z xml2 X11 cairo \
			SM popt fontconfig crypto freetype ssl m art_lgpl_2 \
			atk-1.0 bonobo-2 bonobo-activation bonoboui-2 \
			gconf-2 gdk-x11-2.0 ORBit-2 gailutil gnomeui-2 \
			gdk_pixbuf-2.0 glade-2.0 glib-2.0 \
			gmodule-2.0 gnome-2 gnomecanvas-2 gnomevfs-2 \
			gobject-2.0 gthread-2.0 gtk-x11-2.0 \
			pango-1.0 pangoft2-1.0 pangocairo-1.0

post-patch: 
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mail-notification
	${INSTALL_DATA} ${WRKINST}${SYSCONFDIR}/sound/events/mail-notification.soundlist \
			${PREFIX}/share/examples/mail-notification.soundlist
	${INSTALL_DATA_DIR} ${PREFIX}/share/schemas/mail-notification
	${INSTALL_DATA} ${WRKSRC}/data/mail-notification.schemas \
			${PREFIX}/share/schemas/mail-notification/

.include <bsd.port.mk>
