# $OpenBSD: Makefile,v 1.6 2004/05/08 06:46:45 sturm Exp $
# $RuOBSD: Makefile,v 1.7 2002/03/26 19:14:05 grange Exp $

COMMENT=		"Free Unix Spectrum Emulator"

DISTNAME=		fuse-0.6.2.1
CATEGORIES=		emulators

HOMEPAGE=		http://fuse-emulator.sourceforge.net/

MAINTAINER=		Alexander Yurchenko <grange@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fuse-emulator/}

USE_X11=		Yes

BUILD_DEPENDS=		::devel/pkgconfig
LIB_DEPENDS=		glib-2.0.0.8,gmodule-2.0.0.8,gobject-2.0.0.8::devel/glib2 \
			spectrum.3::devel/libspectrum \
			765.3::devel/lib765 png.3::graphics/png \
			xml2.7::textproc/libxml

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-lbz2"

FLAVORS=gtk
FLAVOR?=

.if ${FLAVOR:L:Mgtk}
LIB_DEPENDS+=		gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2
CONFIGURE_ARGS=		--with-gtk2
.else
CONFIGURE_ARGS=		--without-gtk
.endif

.include <bsd.port.mk>
