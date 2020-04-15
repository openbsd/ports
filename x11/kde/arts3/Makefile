# $OpenBSD: Makefile,v 1.90 2020/04/15 15:24:31 cwen Exp $

COMMENT =		K Desktop Environment, aRTs
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
REVISION =		17
DISTNAME =		arts-1.5.10
MODKDE_VERSION =	3.5.8

SHARED_LIBS +=	mcop                 2.0      # .1.0
SHARED_LIBS +=	artsflow_idl         2.0      # .1.0
SHARED_LIBS +=	artsflow             2.0      # .1.0
SHARED_LIBS +=	mcop_mt              2.0      # .1.0
SHARED_LIBS +=	kmedia2_idl          2.0      # .1.0
SHARED_LIBS +=	soundserver_idl      2.0      # .1.0
SHARED_LIBS +=	artsgslplayobject    1.0      # .0.0
SHARED_LIBS +=	artswavplayobject    1.0      # .0.0
SHARED_LIBS +=	kmedia2              2.0      # .1.0
SHARED_LIBS +=	artsc                1.0      # .0.0
SHARED_LIBS +=	artscbackend         1.0      # .0.0
SHARED_LIBS +=	artsdsp              1.0      # .0.0
SHARED_LIBS +=	artsdsp_st           1.0      # .0.0
SHARED_LIBS +=	gmcop                2.0      # .1.0
SHARED_LIBS +=	qtmcop               2.0      # .1.0
SHARED_LIBS +=	x11globalcomm        2.0      # .1.0

MODULES =	x11/kde

LIB_DEPENDS = 	devel/libaudiofile \
		devel/glib2 \
		audio/libvorbis \
		audio/libogg \
		audio/libmad

SEPARATE_BUILD =	flavored

CONFIGURE_ENV =	LDFLAGS=-L${LOCALBASE}/lib CPPFLAGS=-I${LOCALBASE}/include
CONFIGURE_ARGS +=	${ENABLE_SHARED} \
			--without-jack \
			--without-esd

WANTLIB += GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft Xi Xinerama Xmu
WANTLIB += Xrandr Xrender Xt Xxf86vm audiofile c drm expat fontconfig
WANTLIB += freetype glib-2.0 gmodule-2.0 gthread-2.0 iconv intl jpeg lcms m
WANTLIB += mad mng ogg pcre png pthread sndio ${COMPILER_LIBCXX} vorbis
WANTLIB += vorbisenc vorbisfile xcb xcb-glx z FLAC X11-xcb Xau Xdmcp glapi
WANTLIB += xcb-dri2

COMPILER =		base-clang ports-gcc base-gcc

post-patch:
	cp ${FILESDIR}/audioiosndio.cc ${WRKSRC}/flow

.include <bsd.port.mk>
