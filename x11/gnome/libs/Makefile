# $OpenBSD: Makefile,v 1.34 2007/07/05 22:50:11 jasper Exp $

COMMENT=		libraries for the GNOME project

GNOME_PROJECT=		gnome-libs
GNOME_VERSION=		1.4.2
PKGNAME=		${DISTNAME}p4
SHARED_LIBS=		art_lgpl	4.0	\
			gnome		36.3	\
			gnomesupport	0.0	\
			gnomeui		47.0	\
			gnorba		28.8	\
			gnorbagtk	0.0	\
			gtkxmhtml	1.1	\
			zvt		6.0

CATEGORIES=		x11

LIB_DEPENDS=		gdk_imlib.>=19::graphics/imlib \
			esd.>=2::audio/esound \
			ORBit.>=5,ORBitutil.>=5,IIOP.>=5,ORBitCosNaming.>=5::devel/ORBit \
			gdk.>=1.2::x11/gtk+

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xi Xpm audiofile c glib gmodule gtk \
			iconv intl jpeg m png tiff ungif util wrap z

MODULES=		x11/gnome

USE_X11=		Yes
AUTOCONF_VERSION=	2.13
CONFIGURE_STYLE= 	autoconf

CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+= 	--enable-prefer-db1
CONFIGURE_ARGS+= 	--with-kde-datadir=${LOCALBASE}/share
CONFIGURE_ARGS+= 	--disable-test-gnome
CONFIGURE_ARGS+=	--disable-gtk-doc

CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-build:
	@if pkg dependencies check gnome-libs-\*; then \
		if pkg dependencies check ${DISTNAME}; then \
			:; \
		else \
			echo 1>&2 "Error: you must remove your old gnome-libs first"; \
			exit 1; \
		fi; \
	fi;

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-libs; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/gnome-libs/
# Fix conflict with Gnome 2
	@mv ${PREFIX}/share/pixmaps/gnome-default-dlg.png ${PREFIX}/share/pixmaps/gnome-default-dlg1.png
	@mv ${PREFIX}/share/pixmaps/gnome-error.png ${PREFIX}/share/pixmaps/gnome-error1.png
	@mv ${PREFIX}/share/pixmaps/gnome-info.png ${PREFIX}/share/pixmaps/gnome-info1.png
	@mv ${PREFIX}/share/pixmaps/gnome-question.png ${PREFIX}/share/pixmaps/gnome-question1.png
	@mv ${PREFIX}/share/pixmaps/gnome-warning.png ${PREFIX}/share/pixmaps/gnome-warning1.png


.include <bsd.port.mk>
