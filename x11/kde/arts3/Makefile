# $OpenBSD: Makefile,v 1.37 2005/03/29 21:18:34 espie Exp $

COMMENT=		"K Desktop Environment, aRTs"
CATEGORIES=		x11 x11/kde
VERSION=		3.4
DISTNAME=		arts-1.4.0
MODKDE_VERSION?=	3.4

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
PATCH_LIST=patch-*

WANTLIB=	ICE SM X11 Xext c iconv intl jpeg m ossaudio png pthread \
		stdc++ vorbisenc z
		
#pre-build:
#	@if pkg dependencies check kdelibs-\*; then \
#		if pkg dependencies check ${DISTNAME}; then \
#			:; \
#		else \
#			echo 1>&2 "Error: you must remove your old kdelibs first"; \
#			exit 1; \
#		fi; \
#    	fi

.include <bsd.port.mk>
