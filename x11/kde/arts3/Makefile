# $OpenBSD: Makefile,v 1.55 2006/10/21 22:25:28 espie Exp $

COMMENT=		"K Desktop Environment, aRTs"
CATEGORIES=		x11 x11/kde
VERSION=		3.5.5
DISTNAME=		arts-1.5.5
MODKDE_VERSION?=	3.5.3
PKGNAME=		${DISTNAME}

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

SHARED_ONLY=		No
LIB_DEPENDS= 	audiofile::devel/libaudiofile \
		glib-2.0,gmodule-2.0,gthread-2.0::devel/glib2 \
		vorbis,vorbisfile::audio/libvorbis \
		ogg::audio/libogg \
		mad::audio/libmad \
		esd::audio/esound

SEPARATE_BUILD=flavored

BUILD_DEPENDS=	::devel/pkgconfig

CONFIGURE_ENV=LDFLAGS=-L${LOCALBASE}/lib CPPFLAGS=-I${LOCALBASE}/include
CONFIGURE_ARGS+=	${ENABLE_SHARED} --enable-static

USE_LIBTOOL=	Yes
WANTLIB=	ICE SM X11 Xext c iconv intl jpeg m ossaudio png pthread \
		stdc++ vorbisenc z
		
.include <bsd.port.mk>
