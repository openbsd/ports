BROKEN-i386=		hangs at runtime. started after switch to clang

COMMENT=		vector font editor/converter

V=			20251009
DISTNAME=		fontforge-$V
SHARED_LIBS=		fontforge	5.0

CATEGORIES=		print

HOMEPAGE=		https://fontforge.org/en-US/

MAINTAINER=		Matthias Kilian <kili@openbsd.org>

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB =  ${COMPILER_LIBCXX} ${MODPY_WANTLIB}
WANTLIB += atk-1.0 atkmm-1.6 brotlidec brotlienc c cairo cairo-gobject
WANTLIB += cairomm-1.0 freetype gdk-3 gdk_pixbuf-2.0 gdkmm-3.0
WANTLIB += gif gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gobject-2.0
WANTLIB += gtk-3 gtkmm-3.0 harfbuzz iconv intl jpeg m pango-1.0
WANTLIB += pangocairo-1.0 pangomm-1.4 png readline sigc-2.0 spiro
WANTLIB += tiff util woff2dec woff2enc xml2 z

SITES=		https://github.com/fontforge/fontforge/releases/download/$V/
EXTRACT_SUFX=	.tar.xz

MODULES=		devel/cmake \
			lang/python

BUILD_DEPENDS=		devel/gettext,-tools \
			textproc/py-sphinx

LIB_DEPENDS=		${MODPY_LIB_DEPENDS}	\
			archivers/woff2		\
			graphics/cairo		\
			graphics/jpeg		\
			devel/gettext,-runtime	\
			devel/pango		\
			graphics/libspiro	\
			graphics/png		\
			graphics/tiff		\
			graphics/giflib		\
			textproc/libxml		\
			x11/gtk+3		\
			x11/gtk3mm

# Required for libintl (the build system tries -lintl without any path,
# in contrast to all other libraries).
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST=		Yes

.include <bsd.port.mk>
