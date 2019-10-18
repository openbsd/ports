# $OpenBSD: Makefile,v 1.27 2019/10/18 14:51:59 cwen Exp $

COMMENT=		library for powerful image loading capabilities

DISTNAME=		DevIL-1.7.8
REVISION=		15
SHARED_LIBS+=		IL	1.0 # 2.0
SHARED_LIBS+=		ILU	1.0 # 2.0
SHARED_LIBS+=		ILUT	1.0 # 2.0

CATEGORIES=		graphics devel

HOMEPAGE=		http://openil.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=openil/}
EXTRACT_SUFX=		.zip

WANTLIB += ${COMPILER_LIBCXX} GL GLU Half ICE Iex IexMath IlmImf
WANTLIB += IlmThread Imath SDL SM X11 X11-xcb Xdamage Xext Xfixes
WANTLIB += Xi Xmu Xrandr Xrender Xt Xxf86vm c drm expat glapi
WANTLIB += glut iconv jasper jpeg lcms m mng png sndio tiff usbhid
WANTLIB += xcb xcb-dri2 xcb-dri3 xcb-glx xcb-present xcb-sync
WANTLIB += xcb-xfixes xshmfence z

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=		converters/libiconv \
			devel/sdl \
			graphics/freeglut \
			graphics/ilmbase \
			graphics/jasper>=2.0.14 \
			graphics/libmng \
			graphics/lcms \
			graphics/openexr \
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

# gcc-8's _mm_malloc() uses the AltiVec keyword __vector, so we need
# to disable it to make it run on macppc G3 machines
.if ${MACHINE_ARCH:Mpowerpc}
CONFIGURE_ENV +=	ac_cv_header_mm_malloc_h=
.endif

post-extract:
	chmod +x ${WRKSRC}/configure
	${SUBST_CMD} ${WRKSRC}/test/Makefile.in

post-configure:
	chmod +x ${WRKDIST}/build-aux/install-sh

post-install:
	@cd ${WRKSRC}; tar cf - examples | tar xf - -C \
		${PREFIX}/share/devil/

.include <bsd.port.mk>
