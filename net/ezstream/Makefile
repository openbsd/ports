# $OpenBSD: Makefile,v 1.6 2007/09/08 16:05:18 mgrimm Exp $

COMMENT=	streaming source client that uses external en-/decoders

DISTNAME=	ezstream-0.5.0
CATEGORIES=	net multimedia

HOMEPAGE=	http://www.icecast.org/ezstream.php

MAINTAINER=	Moritz Grimm <mdgrimm@gmx.net>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c iconv m ogg pthread theora vorbis vorbisfile z

MASTER_SITES=	http://downloads.xiph.org/releases/ezstream/

LIB_DEPENDS=	shout.>=3::net/libshout \
		speex.>=4::audio/speex \
		xml2.>=9::textproc/libxml \
		tag_c.>=1::audio/taglib

SEPARATE_BUILD=	simple

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-taglib="${LOCALBASE}"

.include <bsd.port.mk>
