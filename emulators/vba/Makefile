# $OpenBSD: Makefile,v 1.7 2009/09/18 10:25:47 ajacoutot Exp $

COMMENT=		Gameboy Advance emulator

VERSION=		1.7.2
DISTNAME=		VisualBoyAdvance-src-${VERSION}
PKGNAME=		vba-${VERSION}p5
CATEGORIES=		emulators

HOMEPAGE=		http://vba.ngemu.com/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 atkmm-1.6 c cairomm-1.0 \
		expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		gdkmm-2.4 gio-2.0 giomm-2.4 glade-2.0 glib-2.0 glibmm-2.4 \
		glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 gtkmm-2.4 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pangomm-1.4 \
		pixman-1 pthread pthread-stubs sigc-2.0 stdc++ xml2 xcb z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=vba/}

MODULES=		gcc3
MODGCC3_ARCHES=         sparc
MODGCC3_LANGS=          c c++

MODULES+=		devel/gettext

USE_LIBTOOL=		Yes
USE_X11=		Yes
USE_GMAKE=		Yes

LIB_DEPENDS=		glademm-2.4::devel/libglademm \
			SDL::devel/sdl \
			cairo::graphics/cairo \
			png::graphics/png

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include/libpng \
			-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -lm" \
			LIBS+="-lintl"
CONFIGURE_ARGS= 	--disable-profiling \
			--with-x \
			--enable-gtk=2.4

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+= 	::devel/nasm
CONFIGURE_ARGS+=	--enable-c-core
.endif

WRKDIST=		${WRKDIR}/${DISTNAME:S/-src//}

pre-configure:
	perl -pi -e 's|# include "sigccompat.h"||g ; \
		s|SigC::Connection|sigc::connection|g ; \
		s|SigC::bind|sigc::bind|g ; \
		s|SigC::slot|sigc::mem_fun|g' ${WRKSRC}/src/gtk/*.*

.include <bsd.port.mk>
