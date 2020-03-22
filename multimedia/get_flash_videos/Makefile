# $OpenBSD: Makefile,v 1.36 2020/03/22 18:13:36 naddy Exp $

COMMENT=	download flash video files from various sites

V=	1.25.99
DISTNAME=	get_flash_videos-${V}

CATEGORIES=	multimedia perl5

HOMEPAGE =	https://github.com/monsieurvideo/get-flash-videos

MAINTAINER=	Nigel Taylor <nigel@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE=	Yes

MASTER_SITES =	https://github.com/monsieurvideo/get-flash-videos/releases/download/${V}/

MODULES=	perl
CONFIGURE_STYLE=perl
PKG_ARCH=	*

BUILD_DEPENDS=	devel/p5-Tie-IxHash
# main program, and listed in MYMETA.json
RUN_DEPENDS=	www/p5-LWP-Protocol-https \
		www/p5-LWP-Protocol-socks \
		www/p5-libwww \
		devel/p5-Module-Find \
		devel/p5-Term-ProgressBar \
		www/p5-URI \
		www/p5-WWW-Mechanize
# modules
RUN_DEPENDS+=	multimedia/p5-Data-AMF \
		multimedia/p5-Storable-AMF \
		rtmpdump-*|flvstreamer-*:net/rtmpdump \
		security/p5-Crypt-Blowfish_PP \
		security/p5-Crypt-Rijndael \
		security/p5-Digest-HMAC \
		textproc/p5-XML-Simple

WRKDIST=	${WRKDIR}/${DISTNAME:S/_/-/g}

pre-configure:
	cd ${WRKSRC}; sed -i \
	    's,/etc/get_flash_videosrc,${SYSCONFDIR}/get_flash_videosrc,g' \
	    doc/get_flash_videos.pod get_flash_videos

post-install:
	find ${WRKINST} -name '*.orig' -delete

.include <bsd.port.mk>
