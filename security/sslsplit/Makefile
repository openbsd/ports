# $OpenBSD: Makefile,v 1.17 2019/08/31 14:01:19 sthen Exp $

COMMENT=	transparent and scalable SSL/TLS interception

DISTNAME=	sslsplit-0.5.5
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	security

HOMEPAGE=	https://www.roe.ch/SSLsplit

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# SSLsplit: BSD, khash.h (header-based library): MIT
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto event_core event_extra event_openssl event_pthreads
WANTLIB += net pcap pthread ssl

MASTER_SITES=	https://mirror.roe.ch/rel/sslsplit/

LIB_DEPENDS=	devel/libevent2 \
		net/libnet/1.1
TEST_DEPENDS=	devel/check
MAKE_FLAGS=	MANDIR=${TRUEPREFIX}/man PREFIX=${TRUEPREFIX}
FAKE_FLAGS=	SYSCONFDIR=${TRUEPREFIX}/share/examples

USE_GMAKE=	Yes

MAKE_FILE=	GNUmakefile

post-install:
	sed -i 's,/usr/local/share/examples/,${SYSCONFDIR}/,' \
		${PREFIX}/share/examples/sslsplit/* \
		${PREFIX}/man/man*/*

.include <bsd.port.mk>
