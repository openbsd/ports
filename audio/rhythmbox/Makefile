# $OpenBSD: Makefile,v 1.3 2005/11/16 06:39:22 marcm Exp $

COMMENT=		"Music Management Application"

DISTNAME=		rhythmbox-0.8.8
CATEGORIES=		audio

HOMEPAGE=		http://www.rhythmbox.org
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/rhythmbox/0.8/}

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xrender \
			c crypto fontconfig freetype pthread m ssl z \
			ORBit-2 ORBitCosNaming-2 art_lgpl_2.5 atk-1.0.0.0 \
			audiofile bonobo-2 bonobo-activation.4.0 bonoboui-2 \
			esd.2 gconf-2 glade-2.0.0.0 jpeg popt xml2 \
			glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 gthread-2.0.0.0 \
			pango-1.0.0.0 pangocairo-1.0.0.0 pangoft2-1.0.0.0 \
			gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 gtk-x11-2.0.0.0 \
			gnome-2 gnome-keyring gnomecanvas-2 gnomeui-2 gnomevfs-2 \
			gstcontrol-0.8.5.0 gstreamer-0.8.5.0 \
			cairo glitz png

MODULES=		gettext

BUILD_DEPENDS=  	:pkgconfig-*:devel/pkgconfig \
			:scrollkeeper-*:textproc/scrollkeeper \
			:p5-XML-Parser-*:textproc/p5-XML-Parser \
			:gstreamer-gnome-*:devel/gstreamer-plugins,-gnome
LIB_DEPENDS= 		gstgconf-0.8.0.0::devel/gstreamer-plugins \
			gnomeui-2::x11/gnome/libgnomeui
RUN_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper \
			:gstreamer-flac-*:devel/gstreamer-plugins,-flac \
			:gstreamer-gnome-*:devel/gstreamer-plugins,-gnome \
			:gstreamer-mad-*:devel/gstreamer-plugins,-mad \
			:gstreamer-ogg-*:devel/gstreamer-plugins,-ogg \
			:gstreamer-vorbis-*:devel/gstreamer-plugins,-vorbis

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/rhythmbox/
CONFIGURE_ARGS+=	--disable-schemas-install
CONFIGURE_ARGS+=	--enable-nautilus-menu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
