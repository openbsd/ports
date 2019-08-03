# $OpenBSD: Makefile,v 1.2 2019/08/03 08:41:41 ajacoutot Exp $

COMMENT =	DragonFly Mail Agent
DISTNAME =	dma-0.11.21
CATEGORIES =	mail
REVISION =	0

HOMEPAGE =	https://www.dragonflybsd.org/handbook/mta/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto ssl

MASTER_SITES =	https://mirrors.nycbug.org/pub/distfiles/

MAKE_FLAGS =	CC="${CC}" \
		CONF_PATH="${SYSCONFDIR}/dma" \
		DMA_GROUP="_dma" \
		DMA_ROOT_USER="_dma" \
		LIBEXEC_PATH="${LOCALBASE}/libexec"

FAKE_FLAGS =	DESTDIR=

.include <bsd.port.mk>
