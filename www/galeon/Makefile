# $OpenBSD: Makefile,v 1.28 2006/09/18 09:04:03 espie Exp $

COMMENT=	"GNOME web browser based on gecko"

V=		1.3.21
DISTNAME=	galeon-${V}
PKGNAME=	${DISTNAME}p4
CATEGORIES=	www

HOMEPAGE=	http://galeon.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB= ORBit-2.0.0 ORBitCosNaming-2.0.0 art_lgpl_2.0.0 atk-1.0.0.0 audiofile \
	 bonobo-2.0.0 bonobo-activation bonoboui-2.0.0 esd gconf-2.0.0 \
	 gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 glade-2.0.0.0 glib-2.0.0.0 \
	 gmodule-2.0.0.0 gnome-2.0.0 gnome-keyring gnomecanvas-2.0.0 \
	 gnomevfs-2.0.0 gobject-2.0.0.0 gthread-2.0.0.0 gtk-x11-2.0.0.0 jpeg \
	 pango-1.0.0.0 pangoft2-1.0.0.0 pangocairo-1.0.0.0 popt cairo glitz \
	 startup-notification-1 xml2.0.0 ICE SM X11 Xext Xrender png \
	 c crypto fontconfig freetype m pthread ssl stdc++ z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=galeon/}

MODULES=	devel/gettext gcc3
MODGCC3_ARCHES=	alpha
MODGCC3_LANGS=	C++

BUILD_DEPENDS=	:mozilla->=1.7.11:www/mozilla \
		:mozilla-devel->=1.7.11:www/mozilla,-devel \
 		:pkgconfig-*:devel/pkgconfig \
		:p5-XML-Parser-*:textproc/p5-XML-Parser \
		:scrollkeeper->=0.3.12:textproc/scrollkeeper
LIB_DEPENDS= 	gnome-desktop-2::x11/gnome/desktop \
		gnomeui-2::x11/gnome/libgnomeui \
		mozilla/gtkembedmoz,mozilla/xpcom,mozilla/plds4,mozilla/plc4,mozilla/nspr4:mozilla->=1.7.11:www/mozilla

CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/mozilla -L${LOCALBASE}/lib" \
		MOZILLA_CONFIG=${LOCALBASE}/mozilla/mozilla-config

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/galeon \
		--disable-schemas-install \
		--disable-gtkhtml

WRKDIST=	${WRKDIR}/galeon-${V}/

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

post-install:
	@mv -f ${PREFIX}/bin/galeon ${PREFIX}/bin/galeon-bin
	${INSTALL_SCRIPT} ${FILESDIR}/galeon ${PREFIX}/bin
	@perl -pi -e 's|%%LOCALBASE%%|${LOCALBASE}|g;' ${PREFIX}/bin/galeon

.include <bsd.port.mk>
