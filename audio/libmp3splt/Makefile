# $OpenBSD: Makefile,v 1.12 2019/07/12 20:43:35 sthen Exp $

COMMENT=	library to split mp3/ogg files without decoding

DISTNAME=	libmp3splt-0.5.4

SHARED_LIBS +=  mp3splt 	0.0   # .0.5
REVISION =	4

CATEGORIES=	audio

HOMEPAGE=	http://mp3splt.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	id3tag m mad ltdl ogg vorbis vorbisfile z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mp3splt/}

LIB_DEPENDS=	audio/libmad \
		devel/libtool,-ltdl \
		audio/libvorbis \
		audio/libid3tag

# required for static linking
LIB_DEPENDS +=	audio/libogg

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS= --with-ogg="${LOCALBASE}" \
		--with-vorbis="${LOCALBASE}" 
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
