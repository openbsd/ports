# $OpenBSD: Makefile,v 1.31 2016/05/13 07:56:55 nigel Exp $

COMMENT=	download flash video files from various sites

V=		1.25.92
DISTNAME=	get_flash_videos-$V
PKGNAME=	${DISTNAME}
CATEGORIES=	multimedia

HOMEPAGE=	https://get-flash-videos.googlecode.com/

MAINTAINER=	Nigel Taylor <nigel@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
PKG_ARCH=	*

GH_ACCOUNT=	monsieurvideo
GH_PROJECT=	get-flash-videos
GH_TAGNAME=	$V
MASTER_SITES=	${MASTER_SITES_GITHUB}

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

pre-configure:
	cd ${WRKSRC}; sed -i \
	    's,/etc/get_flash_videosrc,${SYSCONFDIR}/get_flash_videosrc,g' \
	    doc/get_flash_videos.pod get_flash_videos

post-install:
	cd ${WRKINST}; find . -name '*.orig' -exec rm {} +

.include <bsd.port.mk>
