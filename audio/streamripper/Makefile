# $OpenBSD: Makefile,v 1.30 2019/07/12 20:43:41 sthen Exp $

COMMENT=	rip shoutcast streams to local mp3s

DISTNAME=	streamripper-1.64.6
REVISION=	4
CATEGORIES=	audio

HOMEPAGE=	http://streamripper.sourceforge.net/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=streamripper/}

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c glib-2.0 iberty iconv intl m mad>=2 ogg>=5.2 pthread vorbis>=3.0

LIB_DEPENDS=	audio/libmad \
		audio/libogg \
		audio/libvorbis \
		devel/glib2

AUTOCONF_VERSION=2.63
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS += ac_cv_lib_faad_NeAACDecDecode2=no
CONFIGURE_ENV=	CPPLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
