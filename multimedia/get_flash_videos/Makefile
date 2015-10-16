# $OpenBSD: Makefile,v 1.26 2015/10/16 15:37:28 sthen Exp $

COMMENT=	download flash video files from various sites

V=		20151008
DISTNAME=	App-get_flash_videos-1.24.$V
PKGNAME=	get_flash_videos-1.24.$V
#WRKDIST=	${WRKDIR}/monsieurvideo-get-flash-videos-c52cdf6
CATEGORIES=	multimedia

HOMEPAGE=	https://get-flash-videos.googlecode.com/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan

GH_ACCOUNT=	monsieurvideo
GH_PROJECT=	get-flash-videos
GH_COMMIT=	e927a6cc9a62744a814cad691ab74855de4cc673

BUILD_DEPENDS=	devel/p5-Tie-IxHash
# main program, and listed in MYMETA.json
RUN_DEPENDS=	www/p5-LWP-Protocol-https \
		www/p5-LWP-Protocol-socks \
		www/p5-libwww \
		devel/p5-Module-Find \
		www/p5-URI \
		www/p5-WWW-Mechanize
# modules
RUN_DEPENDS+=	devel/p5-Term-ReadKey \
		multimedia/p5-Data-AMF \
		multimedia/p5-Storable-AMF \
		rtmpdump-*|flvstreamer-*:net/rtmpdump \
		security/p5-Crypt-Blowfish_PP \
		security/p5-Crypt-Rijndael \
		security/p5-Digest-HMAC \
		textproc/p5-XML-Simple

pre-configure:
	cd ${WRKSRC}; perl -pi -e \
	    's,/etc/get_flash_videosrc,${SYSCONFDIR}/get_flash_videosrc,g' \
	    doc/get_flash_videos.pod get_flash_videos

post-install:
	cd ${WRKINST}; find . -name '*.orig' -exec rm {} +

.include <bsd.port.mk>
