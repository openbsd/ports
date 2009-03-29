# $OpenBSD: Makefile,v 1.12 2009/03/29 21:08:21 kili Exp $

COMMENT=	command-line MPEG audio decoder and player

DISTNAME=	madplay-0.15.2b
PKGNAME=	${DISTNAME}p1
CATEGORIES=	audio
HOMEPAGE=	http://mad.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.mars.org/pub/mpeg/ \
		${MASTER_SITE_SOURCEFORGE:=mad/}

MODULES=	devel/gettext
LIB_DEPENDS=	id3tag.>=3::audio/libid3tag mad.>=2::audio/libmad
WANTLIB=	c m sndio z

FLAVORS=	esd
FLAVOR?=

.if ${FLAVOR:L:Mesd}
CONFIGURE_ARGS+= --with-esd
LIB_DEPENDS+=   esd.>=2::audio/esound
WANTLIB+=	audiofile
.else
CONFIGURE_ARGS+= --without-esd
.endif

USE_LIBTOOL=	Yes
SEPARATE_BUILD=	simple
AUTOCONF_VERSION=2.59
AUTOMAKE_VERSION=1.8
CONFIGURE_STYLE= autoconf automake
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-extract:
	@cp -f ${FILESDIR}/audio_sndio.c ${WRKSRC}/

.include <bsd.port.mk>
