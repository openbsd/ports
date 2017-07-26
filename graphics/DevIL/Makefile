# $OpenBSD: Makefile,v 1.23 2017/07/26 22:45:23 sthen Exp $

COMMENT=		library for powerful image loading capabilities

DISTNAME=		DevIL-1.7.8
REVISION=		13
SHARED_LIBS+=		IL	1.0 # 2.0
SHARED_LIBS+=		ILU	1.0 # 2.0
SHARED_LIBS+=		ILUT	1.0 # 2.0

CATEGORIES=		graphics devel

HOMEPAGE=		http://openil.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=openil/}
EXTRACT_SUFX=		.zip

WANTLIB += GL GLU Half ICE Iex IexMath IlmImf IlmThread Imath
WANTLIB += SDL SM X11 X11-xcb Xdamage Xext Xfixes Xi
WANTLIB += Xmu Xrandr Xrender Xt Xxf86vm c drm glapi glut iconv jasper
WANTLIB += jpeg lcms m mng png pthread sndio ${COMPILER_LIBCXX}
WANTLIB += tiff usbhid xcb xcb-dri2 xcb-glx z expat

LIB_DEPENDS=		converters/libiconv \
			devel/sdl \
			graphics/freeglut \
			graphics/ilmbase \
			graphics/jasper \
			graphics/libmng \
			graphics/lcms \
			graphics/openexr \
			graphics/openjpeg \
			graphics/tiff \
			graphics/png


AUTOCONF_VERSION=	2.61
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS+=	--with-squish=no \
			--with-zlib=yes \
			--enable-ILU \
			--enable-ILUT \
			--disable-allegro

# This would only install three binary examples, we'll install it manually.
CONFIGURE_ARGS+=	--with-examples=no
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -lm -lz"

WRKDIST=		${WRKDIR}/${DISTNAME:L}

# Too many Linuxisms in testing tools
NO_TEST=		Yes

post-extract:
	chmod +x ${WRKSRC}/configure
	${SUBST_CMD} ${WRKSRC}/test/Makefile.in

post-configure:
	chmod +x ${WRKDIST}/build-aux/install-sh

post-install:
	@cd ${WRKSRC}; tar cf - examples | tar xf - -C \
		${PREFIX}/share/devil/

.include <bsd.port.mk>
