# $OpenBSD: Makefile,v 1.24 2015/08/19 18:55:05 sthen Exp $

COMMENT=	audio file volume normalizer

DISTNAME=	normalize-0.7.7
REVISION=	1
CATEGORIES=	audio

MASTER_SITES=	${MASTER_SITE_SAVANNAH:=normalize/}

HOMEPAGE=	http://normalize.nongnu.org/

MAINTAINER=	Vlad Glagolev <stealth@sourcemage.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/gettext

WANTLIB=	c m mad>=2 audiofile FLAC ogg

CONFIGURE_STYLE= gnu

# Do not build xmms plugin for now.
CONFIGURE_ARGS=	--disable-xmms \
		--with-mad \
		--with-audiofile

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

LIB_DEPENDS=	audio/libmad \
		devel/libaudiofile


.include <bsd.port.mk>
