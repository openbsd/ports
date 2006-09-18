# $OpenBSD: Makefile,v 1.16 2006/09/18 12:00:00 espie Exp $

COMMENT=		"PDF viewer for GNOME"

DISTNAME=		gpdf-2.8.1
PKGNAME=		${DISTNAME}p5
CATEGORIES=		textproc x11/gnome

HOMEPAGE=		http://www.inf.tu-dresden.de/~mk793652/gpdf/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=gmodule-2.0 gtk-x11-2.0 gobject-2.0 cairo \
	art_lgpl_2 fontconfig gconf-2 gnomecanvas-2 pthread ICE \
	glib-2.0 pango-1.0 pangocairo-1.0 c popt SM \
	pangoft2-1.0 gnomevfs-2 ORBit-2 z gnome-2 glade-2.0 \
	gthread-2.0 xml2 gnomeprint-2-2 X11 atk-1.0 stdc++ \
	freetype gdk-x11-2.0 bonobo-activation bonobo-2 m bonoboui-2 \
	gdk_pixbuf-2.0

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gpdf/2.8/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser \
			${RUN_DEPENDS}
RUN_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper
LIB_DEPENDS=		gnomeui-2::x11/gnome/libgnomeui \
			gnomeprintui-2-2::x11/gnome/libgnomeprintui

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-schemas-install
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gpdf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
