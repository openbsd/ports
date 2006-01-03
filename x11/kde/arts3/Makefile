# $OpenBSD: Makefile,v 1.46 2006/01/03 09:10:53 espie Exp $

COMMENT=		"K Desktop Environment, aRTs"
CATEGORIES=		x11 x11/kde
VERSION=		3.5.0
DISTNAME=		arts-1.5.0
MODKDE_VERSION?=	3.5
PKGNAME=		${DISTNAME}p1
SHARED_LIBS=		artsc			0.0 \
			artscbackend		0.0 \
			artsdsp			0.0 \
			artsdsp_st		0.0 \
			artsflow		1.0 \
			artsflow_idl		1.0 \
			artsgslplayobject	0.0 \
			artswavplayobject	0.0 \
			gmcop			1.0 \
			kmedia2			1.0 \
			kmedia2_idl		1.0 \
			mcop			1.0 \
			mcop_mt			1.0 \
			qtmcop			1.0 \
			soundserver_idl		1.0 \
			x11globalcomm		1.0

SHARED_ONLY=		No
LIB_DEPENDS= 	audiofile::devel/libaudiofile \
		glib-2.0.0.0,gmodule-2.0.0.0,gthread-2.0.0.0::devel/glib2 \
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
