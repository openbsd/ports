# $OpenBSD: Makefile,v 1.2 2005/02/25 15:22:51 alek Exp $

COMMENT=		"tools to edit/modify/encode video streams"

DISTNAME=		mjpegtools-1.6.2
PKGNAME=		${DISTNAME}p0
CATEGORIES=		multimedia

HOMEPAGE=		http://mjpeg.sourceforge.net/

MAINTAINER=		Jacob Meuser <jakemsr@jakemsr.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 stdc++ pthread glib m usbhid c gmodule Xi Xext z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mjpeg/}

MODULES=		devel/gettext
BUILD_DEPENDS=		::devel/pkgconfig
LIB_DEPENDS=		SDL.2:sdl-*-!no_x11:devel/sdl \
			dv.4::multimedia/libdv \
			gdk.1.2,gtk.1.2::x11/gtk+ \
			jpeg.62::graphics/jpeg \
			png.4::graphics/png

SEPARATE_BUILD=		concurrent

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-x --enable-xfree-ext \
			--with-dv=${LOCALBASE} --with-dv-yv12 \
			--disable-zalpha

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include  \
				-I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=		quicktime optimized
FLAVOR?=

.if ${FLAVOR:L:Moptimized}
CONFIGURE_ARGS+=	--enable-simd-accel
.  if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=		::devel/nasm
CONFIGURE_ARGS+=	--enable-cmov-extension
.  endif
.else
CONFIGURE_ARGS+=	--disable-cmov-extension \
			--disable-simd-accel
.endif

.if ${FLAVOR:L:Mquicktime}
LIB_DEPENDS+=		quicktime.0::multimedia/libquicktime
CONFIGURE_ARGS+=	--with-quicktime
.else
CONFIGURE_ARGS+=	--without-quicktime
.endif

post-install:
	${INSTALL_DATA} ${WRKBUILD}/utils/libmjpegutils_pic.a ${PREFIX}/lib

NO_REGRESS=		Yes

.include <bsd.port.mk>
