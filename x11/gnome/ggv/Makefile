# $OpenBSD: Makefile,v 1.9 2006/06/13 13:36:44 bernd Exp $

COMMENT=		"GNOME frontend for GhostScript"
DISTNAME=		ggv-2.8.3
PKGNAME=		${DISTNAME}p2
CATEGORIES=		print x11/gnome

HOMEPAGE=		http://www.gnome.org/	

MAINTAINER=		Thomas Delaet <thomas@delaet.org>	

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xext \
		Xrender art_lgpl_2 atk-1.0.0.0 audiofile bonobo-2 \
		bonobo-activation bonoboui-2 c crypto esd fontconfig \
		freetype gconf-2 gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 \
		glib-2.0.0.0 gmodule-2.0.0.0 gnome-2 gnome-keyring \
		gnomecanvas-2 gnomevfs-2 gobject-2.0.0.0 gthread-2.0.0.0 \
		gtk-x11-2.0.0.0 jpeg m pango-1.0.0.0 pangocairo-1.0.0.0 \
		pangoft2-1.0.0.0 popt pthread ssl xml2 z cairo glitz png

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/ggv/2.8/}	
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser \
			:scrollkeeper-*:textproc/scrollkeeper \
			:ghostscript-*:print/ghostscript/gnu
LIB_DEPENDS=		gnomeui-2::x11/gnome/libgnomeui
RUN_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper \
			:ghostscript-*:print/ghostscript/gnu

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/ggv \
			--disable-schemas-install

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
