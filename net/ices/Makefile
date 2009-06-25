# $OpenBSD: Makefile,v 1.15 2009/06/25 15:09:00 naddy Exp $

COMMENT=	icecast source for streaming MP3

DISTNAME=	ices-0.4
PKGNAME=	${DISTNAME}p6
CATEGORIES=	net audio

HOMEPAGE=	http://www.icecast.org/ices.php

MAINTAINER=	Moritz Grimm <mdgrimm@gmx.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m ogg perl pthread theora util vorbis vorbisfile z

MASTER_SITES=	http://downloads.xiph.org/releases/ices/

AUTOCONF_VERSION=2.59
CONFIGURE_STYLE=gnu autoconf
CONFIGURE_ARGS=	--with-docdir=${LOCALBASE}/share/doc/ices \
		--with-moddir=${LOCALBASE}/share/ices \
		--with-lame=${LOCALBASE} --with-vorbis=${LOCALBASE} \
		--with-flac=${LOCALBASE}

MODULES=	converters/libiconv
LIB_DEPENDS=	mp3lame:lame-*:audio/lame \
		shout.>=3::net/libshout \
		speex.>=4::audio/speex \
		FLAC.>=5::audio/flac \
		xml2.>=7::textproc/libxml

FLAVORS=	python mp4
FLAVOR?=

.if ${FLAVOR:L:Mpython}
MODULES+=	lang/python
CONFIGURE_ARGS+=--with-python=${MODPY_BIN}
LIB_DEPENDS+=	${MODPY_LIB_DEPENDS}
.else
CONFIGURE_ARGS+=--without-python
.endif

.if ${FLAVOR:L:Mmp4}
CONFIGURE_ARGS+=--with-faad=${LOCALBASE}
LIB_DEPENDS+=	faad::audio/faad \
		mp4v2::multimedia/libmp4v2
.else
CONFIGURE_ARGS+=--without-faad
.endif

SEPARATE_BUILD=	simple
USE_LIBTOOL=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ices/
	${INSTALL_DATA} ${WRKINST}/${SYSCONFDIR}/ices.conf.dist \
		${PREFIX}/share/examples/ices/

.include <bsd.port.mk>
