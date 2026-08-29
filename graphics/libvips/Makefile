COMMENT =	fast image processing library with low memory needs

VERSION =	8.18.6
DISTNAME =	vips-${VERSION}
PKGNAME =	lib${DISTNAME}
CATEGORIES =	graphics
EXTRACT_SUFX =	.tar.xz

SHARED_LIBS += vips                      2.0 # 42.20.6
SHARED_LIBS += vips-cpp                  2.0 # 42.20.6

HOMEPAGE =	https://libvips.github.io/libvips/

# LGPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c cgif expat gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 imagequant intl jpeg m png tiff webp webpdemux
WANTLIB += webpmux

SITES =	https://github.com/libvips/libvips/releases/download/v${VERSION}/

MODULES =	devel/meson

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/gobject-introspection

LIB_DEPENDS =	devel/gettext,-runtime \
		devel/glib2 \
		graphics/cgif \
		graphics/jpeg \
		graphics/libimagequant \
		graphics/libwebp \
		graphics/png \
		graphics/tiff

COMPILER =	base-clang ports-gcc

CONFIGURE_ARGS += -Ddefault_library=both \
		-Darchive=disabled \
		-Dcfitsio=disabled \
		-Dexif=disabled \
		-Dfftw=disabled \
		-Dfontconfig=disabled \
		-Dheif=disabled \
		-Dhighway=disabled \
		-Djpeg-xl=disabled \
		-Dlcms=disabled \
		-Dmagick=disabled \
		-Dmagick-package=disabled \
		-Dmatio=disabled \
		-Dnifti=disabled \
		-Dopenexr=disabled \
		-Dopenjpeg=disabled \
		-Dopenslide=disabled \
		-Dorc=disabled \
		-Dpangocairo=disabled \
		-Dpdfium=disabled \
		-Dpoppler=disabled \
		-Draw=disabled \
		-Drsvg=disabled \
		-Dspng=disabled \
		-Duhdr=disabled

.include <bsd.port.mk>
