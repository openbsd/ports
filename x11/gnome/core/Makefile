# $OpenBSD: Makefile,v 1.21 2003/01/02 08:12:19 marcm Exp $

COMMENT=		"core GNOME system"

DISTNAME=		gnome-core-1.4.0.6
CATEGORIES=		x11 x11/gnome
HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-core/1.4/}
EXTRACT_SUFX=		.tar.bz2

LIB_DEPENDS=		glade.4,glade-gnome::devel/libglade,gnome \
			gnome.36,gnorba,zvt::x11/gnome/libs \
			ghttp.1::www/libghttp \
			gdk_pixbuf::graphics/gdk-pixbuf \
			gnomecanvaspixbuf::graphics/gdk-pixbuf,-gnome \
			capplet::x11/gnome/controlcenter

BUILD_DEPENDS=		:scrollkeeper->=0.3.11:textproc/scrollkeeper

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+= 	--with-kde-datadir=${LOCALBASE}/share
CONFIGURE_ARGS+= 	--with-kde-docdir=${LOCALBASE}/share
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" LIBS="-lm"

pre-build:
	@cd ${WRKSRC}; \
	for f in `find . \( -name '*.desktop.in' -or -name '*.soundlist.in' \) -and ! -path '*desktop-links/*'`; \
	do ./xml-i18n-merge po $$f $${f%.in} -d -p; done

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-core; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/gnome-core/

.include <bsd.port.mk>
