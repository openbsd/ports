# $OpenBSD: Makefile,v 1.28 2019/07/12 20:43:35 sthen Exp $

COMMENT=	command-line MPEG audio decoder and player

DISTNAME=	madplay-0.15.2b
REVISION=	8
CATEGORIES=	audio
HOMEPAGE=	http://mad.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	ftp://ftp.mars.org/pub/mpeg/ \
		${MASTER_SITE_SOURCEFORGE:=mad/}

LIB_DEPENDS=	audio/libid3tag \
		audio/libmad \
		devel/gettext,-runtime
WANTLIB=	c iconv id3tag intl m mad sndio z

SEPARATE_BUILD=	Yes
AUTOCONF_VERSION=2.59
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	--without-esd
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-extract:
	@cp -f ${FILESDIR}/audio_sndio.c ${WRKSRC}/

.include <bsd.port.mk>
