# $OpenBSD: Makefile,v 1.15 2019/01/29 23:05:21 sthen Exp $

COMMENT=	transparent and scalable SSL/TLS interception

DISTNAME=	sslsplit-0.5.4
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	security

HOMEPAGE=	https://www.roe.ch/SSLsplit

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# SSLsplit: BSD, khash.h (header-based library): MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto event_core event_extra event_openssl event_pthreads
WANTLIB += net pcap pthread ssl

MASTER_SITES=	https://mirror.roe.ch/rel/sslsplit/

LIB_DEPENDS=	devel/libevent2 \
		net/libnet/1.1
TEST_DEPENDS=	devel/check
MAKE_FLAGS=	MANDIR=man PREFIX=${TRUEPREFIX}

USE_GMAKE=	Yes

MAKE_FILE=	GNUmakefile

post-install:
	mv ${PREFIX}/sslsplit ${PREFIX}/share/examples/
	sed -i 's,/usr/local/etc/,${SYSCONFDIR}/,' \
		${PREFIX}/share/examples/sslsplit/* \
		${PREFIX}/man/man*/*

.include <bsd.port.mk>
