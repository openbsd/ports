# $OpenBSD: Makefile,v 1.24 2006/01/19 17:22:42 steven Exp $

COMMENT=		"applets for use with the GNOME panel"
COMMENT-battstat=	"GNOME applet for monitoring battery level"

VERSION=		2.10.1
SUBVERS=		p1
DISTNAME=		gnome-applets-${VERSION}
PKGNAME=		gnome-applets2-${VERSION}p3
PKGNAME-battstat=	gnome-applets2-battstat-${VERSION}${SUBVERS}p0
CATEGORIES=		x11 x11/gnome

HOMEPAGE=		http://www.gnome.org

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-applets/2.10/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE ORBit-2 ORBitCosNaming-2 SM X11 Xext Xft \
			Xrender art_lgpl_2 atk-1.0.0.0 audiofile bonobo-2 \
			bonobo-activation bonoboui-2 c crypto esd fontconfig \
			freetype gconf-2 gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 \
			glade-2.0.0.0 glib-2.0.0.0 gmodule-2.0.0.0 gnome-2 \
			gnome-keyring gnomecanvas-2 gnomeui-2 gnomevfs-2 \
			gobject-2.0.0.0 gthread-2.0.0.0 gtk-x11-2.0.0.0 jpeg \
			m pango-1.0.0.0 pangox-1.0.0.0 pangoft2-1.0.0.0 \
			pangoxft-1.0.0.0 popt pthread ssl xml2 z

MODULES=		devel/gettext

BUILD_DEPENDS= 		:pkgconfig-*:devel/pkgconfig \
			:scrollkeeper-*:textproc/scrollkeeper \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
RUN_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper \
			:hicolor-icon-theme-*:x11/hicolor-icon-theme
LIB_DEPENDS=		panel-applet-2.0::x11/gnome/panel \
			gailutil.17::x11/gnome/gail \
			gstinterfaces-0.8.1.0::devel/gstreamer-plugins,minimal \
			gtop-2.0.3.0::devel/libgtop2 \
			xklavier::x11/gnome/libxklavier

PSEUDO_FLAVORS=		no_battstat
FLAVOR?=

# Only i386 and macppc have the headers for the battstat applet
.if ${MACHINE_ARCH} != "i386" && ${MACHINE_ARCH} != "powerpc"
FLAVOR+=		no_battstat
.endif

MULTI_PACKAGES=
.if ${FLAVOR:L:Mno_battstat}
CONFIGURE_ARGS+=	--disable-battstat
.else
MULTI_PACKAGES+=	-battstat
.endif
SUBPACKAGE?=

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu old
CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
CONFIGURE_ARGS+=	--disable-schemas-install
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gnome-applets2
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-battstat"
ONLY_FOR_ARCHS=		i386 powerpc
LIB_DEPENDS=		panel-applet-2.0::x11/gnome/panel
. else
WANTLIB+=		Xau XRes kvm xkbfile gstreamer-0.8.5.0 \
			startup-notification-1 wnck-1
. endif
.endif

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.if !${FLAVOR:L:Mno_battstat}
post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-applets2; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/gnome/* ${PREFIX}/share/examples/gnome-applets2/
.endif

.include <bsd.port.mk>
