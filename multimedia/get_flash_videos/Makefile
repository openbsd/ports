# $OpenBSD: Makefile,v 1.19 2012/07/16 10:14:28 sthen Exp $

COMMENT=		download flash video files from various sites

DISTNAME=		monsieurvideo-get-flash-videos-v1.24_02-268-g162d964
PKGNAME=		get_flash_videos-1.24.20120716
WRKDIST=		${WRKDIR}/monsieurvideo-get-flash-videos-162d964
CATEGORIES=		multimedia

HOMEPAGE=		http://get-flash-videos.googlecode.com/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
CPAN_AUTHOR=		MONSIEUR
# git checkout
MASTER_SITES=		http://spacehopper.org/mirrors/
#MASTER_SITES=		https://github.com/downloads/njtaylor/get-flash-videos/

BUILD_DEPENDS=		devel/p5-Tie-IxHash
RUN_DEPENDS=		devel/p5-Term-ReadKey \
			devel/p5-Tie-IxHash \
			multimedia/p5-AMF-Connection \
			multimedia/p5-Data-AMF \
			multimedia/p5-Storable-AMF \
			rtmpdump-*|flvstreamer-*:net/rtmpdump \
			security/p5-Crypt-Blowfish_PP \
			security/p5-Crypt-Rijndael \
			textproc/p5-XML-Simple \
			www/p5-libwww \
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
