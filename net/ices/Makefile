# $OpenBSD: Makefile,v 1.9 2006/08/01 10:50:19 espie Exp $

COMMENT=	"icecast source for streaming MP3"

DISTNAME=	ices-0.4
PKGNAME=	${DISTNAME}p1
CATEGORIES=	net audio

HOMEPAGE=	http://www.icecast.org/

MAINTAINER=	Moritz Grimm <gtgbr@gmx.net>

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
BUILD_DEPENDS=	::devel/pkgconfig
LIB_DEPENDS=	mp3lame:lame-*:audio/lame,no_x11 \
		shout.>=3::net/libshout \
		speex.>=4::audio/speex \
		FLAC.>=5::audio/flac \
		xml2.>=7::textproc/libxml

FLAVORS=	python mp4
FLAVOR?=

.if ${FLAVOR:L:Mpython}
PYTHON_VER=	2.4
CONFIGURE_ARGS+=--with-python=${LOCALBASE}/bin/python${PYTHON_VER}
LIB_DEPENDS+=	python${PYTHON_VER}:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
.else
CONFIGURE_ARGS+=--without-python
.endif

.if ${FLAVOR:L:Mmp4}
CONFIGURE_ARGS+=--with-faad=${LOCALBASE}
LIB_DEPENDS+=	faad,mp4v2::audio/faad
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
