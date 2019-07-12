# $OpenBSD: Makefile,v 1.18 2019/07/12 20:49:03 sthen Exp $

COMMENT =	protect LAN IP address space by ARP spoofing

DISTNAME =	ipguard-1.04
CATEGORIES =	security
REVISION =	2

HOMEPAGE =	http://ipguard.deep.perm.ru/
MASTER_SITES =	${HOMEPAGE}files/

# BSD-like
PERMIT_PACKAGE =	Yes

WANTLIB =	c pcap lib/libnet-1.1/net=11

LIB_DEPENDS =	net/libnet/1.1

MAKE_FLAGS =	CC="${CC}"

NO_TEST =	Yes

.include <bsd.port.mk>
