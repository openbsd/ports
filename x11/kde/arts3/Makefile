# $OpenBSD: Makefile,v 1.78 2015/05/05 17:00:20 sthen Exp $

COMMENT =		K Desktop Environment, aRTs
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
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

MODULES =	x11/kde devel/gettext

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

REVISION =	8

WANTLIB += GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft Xi Xinerama Xmu
WANTLIB += Xrandr Xrender Xt Xxf86vm audiofile c drm expat fontconfig
WANTLIB += freetype glib-2.0 gmodule-2.0 gthread-2.0 jpeg lcms m mad mng
WANTLIB += ogg pcre png pthread sndio stdc++ vorbis vorbisenc vorbisfile
WANTLIB += xcb xcb-glx z

post-patch:
	cp ${FILESDIR}/audioiosndio.cc ${WRKSRC}/flow
		
.include <bsd.port.mk>
