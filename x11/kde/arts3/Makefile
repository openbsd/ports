# $OpenBSD: Makefile,v 1.45 2005/12/17 11:27:44 espie Exp $

COMMENT=		"K Desktop Environment, aRTs"
CATEGORIES=		x11 x11/kde
VERSION=		3.5.0
DISTNAME=		arts-1.5.0
MODKDE_VERSION?=	3.5
PKGNAME=		${DISTNAME}p0

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
