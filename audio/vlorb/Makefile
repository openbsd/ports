# $OpenBSD: Makefile,v 1.12 2019/07/12 20:43:42 sthen Exp $

COMMENT=		audio CD to audio file encoder
DISTNAME=		vlorb-1.2
REVISION=		0
CATEGORIES=		audio

HOMEPAGE=		http://jk.yazzy.org/projects/vlorb/

# GPL
PERMIT_PACKAGE=	Yes

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
	@sed -i 's,/etc/vlorbrc,${SYSCONFDIR}/vlorbrc,g' \
		${WRKSRC}/vlorb ${WRKSRC}/vlorb.1

.include <bsd.port.mk>
