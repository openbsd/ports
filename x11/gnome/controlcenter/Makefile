# $OpenBSD: Makefile,v 1.24 2006/01/10 05:45:54 bernd Exp $

COMMENT=		"GNOME control center"

DISTNAME=		control-center-1.4.0.5
PKGNAME=		${DISTNAME}p0
SHARED_LIBS=		capplet 0.0
CATEGORIES=		x11 x11/gnome

HOMEPAGE=		http://www.gnome.org/

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/control-center/1.4/}
EXTRACT_SUFX=		.tar.bz2

LIB_DEPENDS=		gdk_pixbuf::graphics/gdk-pixbuf \
			gnorba,gtkxmhtml::x11/gnome/libs \
			gnomevfs.::x11/gnome/vfs

BUILD_DEPENDS=		:scrollkeeper->=0.3.12:textproc/scrollkeeper
RUN_DEPENDS=		:scrollkeeper->=0.3.12:textproc/scrollkeeper \
			:gtk-engines->=0.12:x11/gtk-engines

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE IIOP Imlib ORBit ORBitCosNaming ORBitutil SM X11 \
			Xext Xi Xpm Xxf86misc art_lgpl audiofile c esd \
			gconf-1 gconf-gtk-1 gdk gdk_imlib glib gmodule gnome \
			gnomesupport gnomeui gthread gtk iconv intl jpeg m \
			oaf png pthread tiff ungif wrap xml z

USE_X11=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-build:
	@cd ${WRKSRC}/control-center; ../xml-i18n-merge ../po gnomecc.desktop.in gnomecc.desktop -d -p

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/control-center; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/control-center/

.include <bsd.port.mk>
