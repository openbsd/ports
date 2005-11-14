# $OpenBSD: Makefile,v 1.8 2005/11/14 23:03:45 wilfried Exp $

COMMENT=		"Eye of GNOME: an image viewing and cataloging program"
DISTNAME=		eog-2.8.2
PKGNAME=		${DISTNAME}p0
CATEGORIES=		graphics x11/gnome

HOMEPAGE=		http://www.gnome.org/	

MAINTAINER=		Thomas Delaet <thomas@delaet.org>	

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 SM X11 \
		art_lgpl_2 atk-1.0.0.0 bonobo-2 bonobo-activation bonoboui-2 \
		c cairo fontconfig freetype gconf-2 gdk-x11-2.0.0.0 \
		gdk_pixbuf-2.0.0.0 glade-2.0.0.0 glib-2.0.0.0 \
		gmodule-2.0.0.0 gnome-2 gnomecanvas-2 gnomevfs-2 \
		gobject-2.0.0.0 gthread-2.0.0.0 gtk-x11-2.0.0.0 jpeg m \
		pango-1.0.0.0 pangoft2-1.0.0.0 pangocairo-1.0.0.0 \
		popt pthread xml2 z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/eog/2.8/}	
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser \
			:scrollkeeper-*:textproc/scrollkeeper
LIB_DEPENDS=		gnomeui-2::x11/gnome/libgnomeui
RUN_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper
			

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/eog \
			--disable-schemas-install

FLAVORS=		exif
FLAVOR?=

.if ${FLAVOR:L:Mexif}
CONFIGURE_ARGS+=	--with-libexif
LIB_DEPENDS+=		exif::graphics/libexif
.else
CONFIGURE_ARGS+=	--without-libexif
.endif

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
