# $OpenBSD: Makefile,v 1.40 2015/07/07 10:29:05 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		digital camera library

VERSION=		2.5.8
DISTNAME=		libgphoto2-${VERSION}
PKGNAME=		libgphoto-${VERSION}

GPHOTO2_PORT_API=	0.12.0
SUBST_VARS=		GPHOTO2_PORT_API VERSION

CATEGORIES=		graphics devel

SHARED_LIBS +=  gphoto2_port         8.0      # 12.0
SHARED_LIBS +=  gphoto2              4.2      # 6.0

HOMEPAGE=		http://www.gphoto.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c exif expat fontconfig freetype gd jpeg ltdl lzma
WANTLIB += m png pthread pthread-stubs tiff usb-1.0 vpx xml2 z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gphoto/}

MODULES=		devel/gettext

LIB_DEPENDS=		graphics/gd \
			graphics/libexif \
			devel/libusb1 \
			devel/libtool,-ltdl \
			textproc/libxml

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			ac_cv_path_DOXYGEN=false

CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-static \
			--without-hal \
			--without-bonjour

# /usr/local/lib/libiconv.a(localcharset.o)(.text+0x0): In function `locale_charset':
# : multiple definition of `locale_charset'
MAKE_FLAGS=		INTLLIBS='$$(LTLIBINTL)'

post-install:
	rm ${PREFIX}/lib/libgphoto2/${VERSION}/*.{a,la}
	rm ${PREFIX}/lib/libgphoto2_port/${GPHOTO2_PORT_API}/*.{a,la}
	rm -rf ${PREFIX}/lib/udev
	mv ${PREFIX}/share/doc/libgphoto2_port \
		${PREFIX}/share/doc/libgphoto2

.include <bsd.port.mk>
