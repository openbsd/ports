# $OpenBSD: Makefile,v 1.44 2005/11/29 14:00:11 espie Exp $

COMMENT=		"K Desktop Environment, aRTs"
CATEGORIES=		x11 x11/kde
VERSION=		3.5.0
DISTNAME=		arts-1.5.0
MODKDE_VERSION?=	3.5
PKGNAME=		${DISTNAME}

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

WANTLIB=	ICE SM X11 Xext c iconv intl jpeg m ossaudio png pthread \
		stdc++ vorbisenc z
		
.include <bsd.port.mk>
