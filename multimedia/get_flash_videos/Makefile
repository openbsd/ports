# $OpenBSD: Makefile,v 1.1.1.1 2010/10/19 08:09:16 sthen Exp $

COMMENT=		download flash video files from various sites

DISTNAME=		get_flash_videos-1.23
EXTRACT_SUFX=
CATEGORIES=		multimedia

HOMEPAGE=		http://get-flash-videos.googlecode.com/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# any patches sent upstream should be against the modular source,
# see http://github.com/monsieurvideo/get-flash-videos
MASTER_SITES=		${HOMEPAGE}files/

# optional deps, not in ports yet:
# Data::AMF::Packet (for nbc)
# LWP::Protocol::socks (for socks proxies)
RUN_DEPENDS=		::devel/p5-Term-ReadKey \
			::www/p5-libwww \
			::www/p5-URI \
			::www/p5-WWW-Mechanize

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*
WRKDIST=		${WRKDIR}

do-extract:
	cp ${DISTDIR}/${DISTNAME} ${WRKSRC}/get_flash_videos

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/get_flash_videos ${PREFIX}/bin

.include <bsd.port.mk>
