COMMENT=		digital camera library

VERSION=		2.5.32
DISTNAME=		libgphoto2-${VERSION}
PKGNAME=		libgphoto-${VERSION}

GPHOTO2_PORT_API=	0.12.2
SUBST_VARS=		GPHOTO2_PORT_API VERSION

CATEGORIES=		graphics devel

SHARED_LIBS +=  gphoto2_port         9.0      # 14.0
SHARED_LIBS +=  gphoto2              5.0      # 9.0

HOMEPAGE=		http://www.gphoto.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} Lerc c crypto curl exif expat fontconfig
WANTLIB += freetype gd iconv intl jpeg ltdl lzma m nghttp2 nghttp3
WANTLIB += ngtcp2 ngtcp2_crypto_quictls png sharpyuv ssl tiff
WANTLIB += usb usb-1.0 webp xml2 z zstd

SITES=			${SITE_SOURCEFORGE:=gphoto/}

LIB_DEPENDS=		graphics/gd \
			graphics/libexif \
			devel/libusb-compat \
			devel/libtool,-ltdl \
			net/curl \
			textproc/libxml

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

# Force the deactivation of Doxygen
# --disable-internal-docs does not help here
# Doxygen 1.10.0 produce md5 checksum issues
CONFIGURE_ENV+=		DOXYGEN=no \
			ac_cv_path_DOXYGEN=false \
			ac_cv_path_DOT=false

CONFIGURE_ARGS=		--enable-static \
			--without-hal \
			--without-bonjour

# XXX libusb1 is broken
CONFIGURE_ARGS +=	--with-libusb-1.0=no

DEBUG_PACKAGES=		${BUILD_PACKAGES}

# /usr/local/lib/libiconv.a(localcharset.o)(.text+0x0): In function `locale_charset':
# multiple definition of `locale_charset'
MAKE_FLAGS=		INTLLIBS='$$(LTLIBINTL)'

post-install:
	rm ${PREFIX}/lib/libgphoto2/${VERSION}/*.{a,la}
	rm ${PREFIX}/lib/libgphoto2_port/${GPHOTO2_PORT_API}/*.{a,la}
	rm -rf ${PREFIX}/lib/udev
	mv ${PREFIX}/share/doc/libgphoto2_port \
		${PREFIX}/share/doc/libgphoto2

.include <bsd.port.mk>
