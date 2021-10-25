# $OpenBSD: Makefile,v 1.21 2021/10/25 19:03:18 tb Exp $

COMMENT=	transparent and scalable SSL/TLS interception

DISTNAME=	sslsplit-0.5.5
EXTRACT_SUFX=	.tar.bz2
REVISION=	3

CATEGORIES=	security

HOMEPAGE=	https://www.roe.ch/SSLsplit

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
