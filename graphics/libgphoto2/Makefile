# $OpenBSD: Makefile,v 1.56 2017/10/16 09:04:07 ajacoutot Exp $

COMMENT=		digital camera library

VERSION=		2.5.16
DISTNAME=		libgphoto2-${VERSION}
PKGNAME=		libgphoto-${VERSION}

GPHOTO2_PORT_API=	0.12.0
SUBST_VARS=		GPHOTO2_PORT_API VERSION

CATEGORIES=		graphics devel

SHARED_LIBS +=  gphoto2_port         8.1      # 12.0
SHARED_LIBS +=  gphoto2              4.2      # 6.0

HOMEPAGE=		http://www.gphoto.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c exif expat fontconfig freetype gd iconv intl jpeg
WANTLIB += ltdl lzma m png pthread pthread-stubs tiff usb usb-1.0
WANTLIB += webp xml2 z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gphoto/}

LIB_DEPENDS=		graphics/gd \
			graphics/libexif \
			devel/libusb-compat \
			devel/libtool,-ltdl \
			textproc/libxml

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.69
AUTOCONF_DIR=		${WRKSRC} ${WRKSRC}/libgphoto2_port
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			ac_cv_path_DOXYGEN=false

CONFIGURE_ARGS=		--enable-static \
			--without-hal \
			--without-bonjour

# XXX libusb1 is broken
CONFIGURE_ARGS +=	--with-libusb-1.0=no

# /usr/local/lib/libiconv.a(localcharset.o)(.text+0x0): In function `locale_charset':
# multiple definition of `locale_charset'
MAKE_FLAGS=		INTLLIBS='$$(LTLIBINTL)'

# avoid triggering autotools cascade after patching configure.ac
pre-configure:
	@for d in ${AUTOCONF_DIR}; do \
	    touch -r $$d/aclocal.m4 $$d/configure.ac; \
	done

post-install:
	rm ${PREFIX}/lib/libgphoto2/${VERSION}/*.{a,la}
	rm ${PREFIX}/lib/libgphoto2_port/${GPHOTO2_PORT_API}/*.{a,la}
	rm -rf ${PREFIX}/lib/udev
	mv ${PREFIX}/share/doc/libgphoto2_port \
		${PREFIX}/share/doc/libgphoto2

.include <bsd.port.mk>
