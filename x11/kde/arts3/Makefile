# $OpenBSD: Makefile,v 1.53 2006/09/18 12:19:40 espie Exp $

COMMENT=		"K Desktop Environment, aRTs"
CATEGORIES=		x11 x11/kde
VERSION=		3.5.4
DISTNAME=		arts-1.5.4
MODKDE_VERSION?=	3.5.3
PKGNAME=		${DISTNAME}
SHARED_LIBS=		artsc			1.0 \
			artscbackend		1.0 \
			artsdsp			1.0 \
			artsdsp_st		1.0 \
			artsflow		2.0 \
			artsflow_idl		2.0 \
			artsgslplayobject	1.0 \
			artswavplayobject	1.0 \
			gmcop			2.0 \
			kmedia2			2.0 \
			kmedia2_idl		2.0 \
			mcop			2.0 \
			mcop_mt			2.0 \
			qtmcop			2.0 \
			soundserver_idl		2.0 \
			x11globalcomm		2.0

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
