# $OpenBSD: Makefile,v 1.18 2004/12/15 13:57:55 alek Exp $

COMMENT=		"applets for use with the GNOME panel"
COMMENT-battstat=	"GNOME applet for monitoring battery level"

VERSION=		2.8.2
DISTNAME=		gnome-applets-${VERSION}
PKGNAME=		gnome-applets2-${VERSION}
PKGNAME-battstat=	gnome-applets2-battstat-${VERSION}p0
CATEGORIES=		x11 x11/gnome

HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-applets/2.8/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xcursor Xext Xft \
		Xinerama Xrender art_lgpl_2 atk-1.0.0.0 audiofile bonobo-2 \
		bonobo-activation bonoboui-2 c crypto esd fontconfig \
		freetype gconf-2 gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 \
		glade-2.0.0.0 glib-2.0.0.0 gmodule-2.0.0.0 gnome-2 \
		gnome-keyring gnomecanvas-2 gnomeui-2 gnomevfs-2 \
		gobject-2.0.0.0 gthread-2.0.0.0 gtk-x11-2.0.0.0 jpeg kvm m \
		ossaudio pango-1.0.0.0 pangoft2-1.0.0.0 pangox-1.0.0.0 \
		pangoxft-1.0.0.0 popt pthread ssl xkbfile xml2 z

MODULES=		devel/gettext

BUILD_DEPENDS= 		:pkgconfig-*:devel/pkgconfig \
			:scrollkeeper-*:textproc/scrollkeeper \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
RUN_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper
LIB_DEPENDS=		panel-applet-2.0::x11/gnome/panel \
			gailutil.17::x11/gnome/gail \
			gtop-2.0.3.0::devel/libgtop2 \
			xklavier::x11/gnome/libxklavier

PSEUDO_FLAVORS=		no_battstat
# Only i386 and macppc have the headers for the battstat applet
.if ${MACHINE_ARCH} != "i386" && ${MACHINE_ARCH} != "powerpc"
FLAVOR?=		no_battstat
.else
FLAVOR?=
.endif

MULTI_PACKAGES=
.if !${FLAVOR:L:Mno_battstat}
MULTI_PACKAGES+=	-battstat
.endif
SUBPACKAGE?=

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu old
CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
CONFIGURE_ARGS+=	--disable-schemas-install
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gnome-applets2
CONFIGURE_ARGS+=	--disable-gstreamer
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-battstat"
ONLY_FOR_ARCHS=		i386 powerpc
LIB_DEPENDS=		panel-applet-2.0::x11/gnome/panel
. endif
.endif

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-applets2; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/gnome/* ${PREFIX}/share/examples/gnome-applets2/

.include <bsd.port.mk>
