# $OpenBSD: Makefile,v 1.4 2004/12/31 13:10:26 sturm Exp $

COMMENT=	"icecast source for streaming MP3"

DISTNAME=	ices-0.3
CATEGORIES=	net audio

HOMEPAGE=	http://www.icecast.org/

MAINTAINER=	Moritz Grimm <gtgbr@gmx.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c iconv m ogg perl pthread util vorbis vorbisfile z

MASTER_SITES=	http://downloads.us.xiph.org/releases/ices/

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-docdir=${LOCALBASE}/share/doc/ices \
		--with-moddir=${LOCALBASE}/share/examples/ices \
		--with-lame=${LOCALBASE} --with-vorbis=${LOCALBASE}

LIB_DEPENDS=	mp3lame.0:lame-*:audio/lame,no_x11 \
		shout.3::net/libshout \
		xml2.7::textproc/libxml

FLAVORS=	python
FLAVOR?=

.if ${FLAVOR:L:Mpython}
PYTHON_VER=	2.2
CONFIGURE_ARGS+=--with-python=${LOCALBASE}/bin/python${PYTHON_VER}
BUILD_DEPENDS+=	${RUN_DEPENDS}
RUN_DEPENDS+=	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
WANTLIB+=	python2.2.0.0
.else
CONFIGURE_ARGS+=--without-python
.endif

SEPARATE_BUILD=	simple

post-install:
	${INSTALL_DATA} ${WRKBUILD}/conf/ices.conf.dist \
	   ${PREFIX}/share/examples/ices/ices.conf.dist

.include <bsd.port.mk>
