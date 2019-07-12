# $OpenBSD: Makefile,v 1.36 2019/07/12 20:48:28 sthen Exp $

PORTROACH=	limit:^0
PORTROACH_COMMENT=	ices2 is a different port

COMMENT=	icecast source for streaming MP3

DISTNAME=	ices-0.4
REVISION=	12
CATEGORIES=	net audio

HOMEPAGE=	https://icecast.org/ices/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB =	c iconv m ogg perl pthread theora util vorbis vorbisfile z
WANTLIB += 	${MODPY_WANTLIB}
WANTLIB += 	mp3lame shout>=3 speex>=4 FLAC>=5 lzma xml2>=7

MASTER_SITES=	https://downloads.xiph.org/releases/ices/

AUTOCONF_VERSION=2.59
CONFIGURE_STYLE=autoconf
CONFIGURE_ARGS=	--with-docdir=${LOCALBASE}/share/doc/ices \
		--with-moddir=${LOCALBASE}/share/ices \
		--with-lame=${LOCALBASE} --with-vorbis=${LOCALBASE} \
		--with-flac=${LOCALBASE}

LIB_DEPENDS=	audio/lame \
		converters/libiconv \
		net/libshout \
		audio/speex \
		audio/flac \
		textproc/libxml

FLAVORS=	python mp4
FLAVOR?=

.if ${FLAVOR:Mpython}
MODULES+=	lang/python
CONFIGURE_ARGS+=--with-python=${MODPY_BIN}
LIB_DEPENDS+=	${MODPY_LIB_DEPENDS}
.else
CONFIGURE_ARGS+=--without-python
.endif

.if ${FLAVOR:Mmp4}
CONFIGURE_ARGS+=--with-faad=${LOCALBASE}
LIB_DEPENDS+=	audio/faad \
		multimedia/libmp4v2
WANTLIB +=	faad mp4v2
.else
CONFIGURE_ARGS+=--without-faad
.endif

SEPARATE_BUILD=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ices/
	${INSTALL_DATA} ${WRKINST}/${SYSCONFDIR}/ices.conf.dist \
		${PREFIX}/share/examples/ices/

.include <bsd.port.mk>
