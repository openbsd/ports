# $OpenBSD: Makefile,v 1.10 2013/10/11 23:48:08 naddy Exp $

COMMENT=		audio CD to audio file encoder
DISTNAME=		vlorb-1.2
REVISION=		0
CATEGORIES=		audio

HOMEPAGE=		http://jk.yazzy.org/projects/vlorb/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}/releases/

RUN_DEPENDS=		audio/cdparanoia \
			audio/flac \
			audio/vorbis-tools>=1.4.0 \
			audio/vorbisgain \
			audio/p5-cddb

NO_BUILD=		Yes
NO_TEST =		Yes
PKG_ARCH=		*

pre-install:
	@perl -i -pe 's:/etc/vlorbrc:${SYSCONFDIR}/vlorbrc:g' \
		${WRKSRC}/vlorb ${WRKSRC}/vlorb.1

.include <bsd.port.mk>
