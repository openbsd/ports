# $OpenBSD: Makefile,v 1.25 2014/10/24 16:56:32 nigel Exp $

COMMENT=		download flash video files from various sites

DISTNAME=		App-get_flash_videos-1.24.20130320
PKGNAME=		get_flash_videos-1.24.20130320
REVISION=		0
#DISTNAME=		monsieurvideo-get-flash-videos-v1.24_02-292-gc52cdf6
#PKGNAME=		get_flash_videos-1.24.20121012
#WRKDIST=		${WRKDIR}/monsieurvideo-get-flash-videos-c52cdf6
CATEGORIES=		multimedia

HOMEPAGE=		https://get-flash-videos.googlecode.com/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
CPAN_AUTHOR=		MONSIEUR
# git checkout
#MASTER_SITES=		http://spacehopper.org/mirrors/
#MASTER_SITES=		https://github.com/downloads/njtaylor/get-flash-videos/
# No CPAN version yet....
MASTER_SITES=		${HOMEPAGE}files/

BUILD_DEPENDS=		devel/p5-Tie-IxHash
RUN_DEPENDS=		devel/p5-Module-Find \
			devel/p5-Term-ReadKey \
			devel/p5-Tie-IxHash \
			multimedia/p5-Data-AMF \
			multimedia/p5-Storable-AMF \
			rtmpdump-*|flvstreamer-*:net/rtmpdump \
			security/p5-Crypt-Blowfish_PP \
			security/p5-Crypt-Rijndael \
			security/p5-Digest-HMAC \
			textproc/p5-XML-Simple \
			security/p5-IO-Socket-SSL \
			www/p5-libwww \
			www/p5-LWP-Protocol-https \
			www/p5-LWP-Protocol-socks \
			www/p5-URI \
			www/p5-WWW-Mechanize

pre-configure:
	cd ${WRKSRC}; perl -pi -e \
	    's,/etc/get_flash_videosrc,${SYSCONFDIR}/get_flash_videosrc,g' \
	    doc/get_flash_videos.pod get_flash_videos

post-install:
	cd ${WRKINST}; find . -name '*.orig' -exec rm {} +

.include <bsd.port.mk>
