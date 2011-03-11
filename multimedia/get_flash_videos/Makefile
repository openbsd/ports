# $OpenBSD: Makefile,v 1.6 2011/03/11 00:39:44 sthen Exp $

COMMENT=		download flash video files from various sites

DISTNAME=		App-get_flash_videos-1.24
PKGNAME=		${DISTNAME:S/App-//}
REVISION =		1
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
USE_GROFF=		Yes

BUILD_DEPENDS=		devel/p5-Tie-IxHash
RUN_DEPENDS=		devel/p5-Term-ReadKey \
			devel/p5-Tie-IxHash \
			multimedia/p5-Data-AMF \
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

.include <bsd.port.mk>
