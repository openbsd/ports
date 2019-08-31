# $OpenBSD: Makefile,v 1.3 2019/08/31 00:58:02 bcallah Exp $

COMMENT =	DragonFly Mail Agent
DISTNAME =	dma-0.12
CATEGORIES =	mail

HOMEPAGE =	https://www.dragonflybsd.org/handbook/mta/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto ssl

MASTER_SITES =	https://mirrors.nycbug.org/pub/distfiles/

MAKE_FLAGS =	CC="${CC}" \
		CONF_PATH="${SYSCONFDIR}/dma" \
		LIBEXEC_PATH="${LOCALBASE}/libexec"

FAKE_FLAGS =	DESTDIR=

.include <bsd.port.mk>
