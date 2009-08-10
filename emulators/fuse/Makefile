# $OpenBSD: Makefile,v 1.17 2009/08/10 06:31:09 kili Exp $

COMMENT=		Free Unix Spectrum Emulator
DISTNAME=		fuse-0.10.0.2
PKGNAME=		${DISTNAME}p1
CATEGORIES=		emulators
HOMEPAGE=		http://fuse-emulator.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xext Xau Xdmcp audiofile gcrypt gpg-error pcre \
			bz2 c m z pthread-stubs xcb

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fuse-emulator/}

USE_X11=		Yes

MODULES=		devel/gettext
LIB_DEPENDS=		glib-2.0.>=0.8::devel/glib2 \
			samplerate::audio/libsamplerate \
			spectrum.>=5::devel/libspectrum \
			png.>=3::graphics/png \
			xml2.>=7::textproc/libxml

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-lbz2"

FLAVORS=gtk
FLAVOR?=

.if ${FLAVOR:L:Mgtk}
LIB_DEPENDS+=		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
			gio-2.0,gmodule-2.0,gobject-2.0::devel/glib2
CONFIGURE_ARGS=		--with-gtk2
WANTLIB+=		Xcomposite Xcursor Xdamage Xfixes Xi Xinerama Xrandr \
			Xrender atk-1.0 cairo expat fontconfig freetype glitz \
			pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1
.else
CONFIGURE_ARGS=		--without-gtk
WANTLIB+=		ICE SM
.endif

.include <bsd.port.mk>
