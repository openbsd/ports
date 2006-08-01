# $OpenBSD: Makefile,v 1.9 2006/08/01 10:50:19 espie Exp $
# $RuOBSD: Makefile,v 1.7 2002/03/26 19:14:05 grange Exp $

COMMENT=		"Free Unix Spectrum Emulator"

DISTNAME=		fuse-0.6.2.1
PKGNAME=		${DISTNAME}p0
CATEGORIES=		emulators

HOMEPAGE=		http://fuse-emulator.sourceforge.net/

MAINTAINER=		Alexander Yurchenko <grange@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext bz2 c dsk m z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fuse-emulator/}

USE_X11=		Yes

MODULES=		devel/gettext
BUILD_DEPENDS=		::devel/pkgconfig
LIB_DEPENDS=		glib-2.0.>=0.8::devel/glib2 \
			spectrum.>=3::devel/libspectrum \
			765.>=3::devel/lib765 \
			png.>=3::graphics/png \
			xml2.>=7::textproc/libxml

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-lbz2"

FLAVORS=gtk
FLAVOR?=

.if ${FLAVOR:L:Mgtk}
LIB_DEPENDS+=		gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2
CONFIGURE_ARGS=		--with-gtk2
WANTLIB+=		Xft Xinerama Xrender atk-1.0.0.0 fontconfig freetype \
			gmodule-2.0.0.0 gobject-2.0.0.0 pango-1.0.0.0 \
			pangox-1.0.0.0 pangoxft-1.0.0.0
.else
CONFIGURE_ARGS=		--without-gtk
WANTLIB+=		ICE SM
.endif

.include <bsd.port.mk>
