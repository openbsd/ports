# $OpenBSD: Makefile,v 1.2 2003/05/14 23:37:49 naddy Exp $

COMMENT=		"cd2ogg with vorbisgain support"
DISTNAME=		vlorb-1.1
CATEGORIES=		audio

HOMEPAGE=		http://jk.yazzy.org/projects/vlorb/

MAINTAINER=		Han Boetes <han@linux-mandrake.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/releases/

RUN_DEPENDS=		:cdparanoia-*:audio/cdparanoia \
			:vorbis-tools-*:audio/vorbis-tools \
			:vorbisgain-*:audio/vorbisgain \
			:p5-CDDB-*:audio/p5-cddb

NO_BUILD=		Yes
NO_REGRESS=		Yes
FAKE_FLAGS=		mandir=${DESTDIR}${TRUEPREFIX}/man

pre-install:
	@perl -i -pe 's:/etc/vlorbrc:${SYSCONFDIR}/vlorbrc:g' \
		${WRKSRC}/vlorb ${WRKSRC}/vlorb.1

.include <bsd.port.mk>
