# $OpenBSD: Makefile,v 1.69 2009/08/11 08:40:40 ajacoutot Exp $

COMMENT =		K Desktop Environment, aRTs
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
DISTNAME =		arts-1.5.10
MODKDE_VERSION ?=	3.5.8
PKGNAME =		${DISTNAME}p1

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

LIB_DEPENDS = 	audiofile::devel/libaudiofile \
		glib-2.0,gmodule-2.0,gthread-2.0::devel/glib2 \
		vorbis,vorbisfile::audio/libvorbis \
		ogg::audio/libogg \
		mad::audio/libmad

SEPARATE_BUILD =	flavored

CONFIGURE_ENV =	LDFLAGS=-L${LOCALBASE}/lib CPPFLAGS=-I${LOCALBASE}/include
CONFIGURE_ARGS +=	${ENABLE_SHARED} \
			--without-jack \
			--without-esd

WANTLIB =	ICE SM X11 Xext c iconv intl jpeg m png pthread \
		sndio stdc++ vorbisenc z Xau Xdmcp pcre \
		pthread-stubs xcb

post-patch:
	cp ${FILESDIR}/audioiosndio.cc ${WRKSRC}/flow
		
.include <bsd.port.mk>
