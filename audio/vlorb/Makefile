# $OpenBSD: Makefile,v 1.5 2007/09/15 21:26:03 simon Exp $

COMMENT=		audio CD to audio file encoder
DISTNAME=		vlorb-1.2
CATEGORIES=		audio

HOMEPAGE=		http://jk.yazzy.org/projects/vlorb/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/releases/

RUN_DEPENDS=		:cdparanoia-*:audio/cdparanoia \
			:flac-*:audio/flac \
			:vorbis-tools-*:audio/vorbis-tools \
			:vorbisgain-*:audio/vorbisgain \
			:p5-CDDB-*:audio/p5-cddb

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

pre-install:
	@perl -i -pe 's:/etc/vlorbrc:${SYSCONFDIR}/vlorbrc:g' \
		${WRKSRC}/vlorb ${WRKSRC}/vlorb.1

.include <bsd.port.mk>
