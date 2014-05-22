# $OpenBSD: Makefile,v 1.3 2014/05/22 09:48:56 sebastia Exp $

COMMENT =	audio player for GNUstep

DISTNAME =	Cynthiune-1.0.0
REVISION =	1
CATEGORIES +=	audio

HOMEPAGE =	http://gap.nongnu.org/cynthiune/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

SHARED_LIBS +=	Cynthiune	0.0

MODULES =	x11/gnustep
WANTLIB += 	FLAC ao ogg sndio vorbis vorbisfile
WANTLIB += 	audiofile mad modplug tag tag_c id3tag mpcdec
LIB_DEPENDS +=	audio/flac \
		audio/libid3tag \
		audio/libmad \
		audio/libmodplug \
		audio/libvorbis \
		audio/musepack \
		audio/taglib \
		devel/libaudiofile

MAKE_FLAGS =	Cynthiune_INTERFACE_VERSION=${LIBCynthiune_VERSION} \
		disable-windowsmedia=yes \
		disable-alsa=yes \
		disable-esound=yes \
		disable-oss=yes

.include <bsd.port.mk>
