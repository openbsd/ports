# $OpenBSD: Makefile,v 1.11 2005/11/15 13:27:57 wilfried Exp $

COMMENT=		"editor for the GConf configuration system"

VERSION=		2.10.0
DISTNAME=		gconf-editor-${VERSION}
PKGNAME=		${DISTNAME}p0
CATEGORIES=		devel x11/gnome

HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Marc Balmer <marc@msys.ch>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ORBit-2.0.0 X11 Xext Xrender atk-1.0.0.0 c SM \
		fontconfig freetype gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 \
		glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 gthread-2.0.0.0 \
		gtk-x11-2.0.0.0 iconv intl m pango-1.0.0.0 pangoft2-1.0.0.0 \
		popt pthread esd art_lgpl_2 \
		gnomecanvas-2 ICE ORBitCosNaming-2 audiofile gnomevfs-2 jpeg z \
		gnome-2 xml2 crypto bonobo-activation bonobo-2 ssl bonoboui-2 \
		gnome-keyring cairo glitz pangocairo-1.0.0.0 png

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gconf-editor/2.10/}
EXTRACT_SUFX=		.tar.bz2

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser \
			:scrollkeeper-*:textproc/scrollkeeper
RUN_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper
LIB_DEPENDS=		gconf-2::devel/gconf2 \
			gnomeui-2::x11/gnome/libgnomeui

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gconf-editor/ ; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/gconf-editor/

.include <bsd.port.mk>
