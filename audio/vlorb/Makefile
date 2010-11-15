# $OpenBSD: Makefile,v 1.7 2010/11/15 00:22:49 espie Exp $

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

RUN_DEPENDS=		audio/cdparanoia \
			audio/flac \
			audio/vorbis-tools \
			audio/vorbisgain \
			audio/p5-cddb

NO_BUILD=		Yes
NO_REGRESS=		Yes
USE_GROFF =		Yes
PKG_ARCH=		*

pre-install:
	@perl -i -pe 's:/etc/vlorbrc:${SYSCONFDIR}/vlorbrc:g' \
		${WRKSRC}/vlorb ${WRKSRC}/vlorb.1

.include <bsd.port.mk>
