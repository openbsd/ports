# $OpenBSD: Makefile,v 1.16 2017/02/27 19:17:12 jca Exp $

COMMENT =	protect LAN IP address space by ARP spoofing

DISTNAME =	ipguard-1.04
CATEGORIES =	security
REVISION =	1

HOMEPAGE =	http://ipguard.deep.perm.ru/
MASTER_SITES =	${HOMEPAGE}files/

MAINTAINER =	Girish Venkatachalam <girish1729@gmail.com>

# BSD-like
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c pcap lib/libnet-1.1/net=11

LIB_DEPENDS =	net/libnet/1.1

MAKE_FLAGS =	CC="${CC}"

NO_TEST =	Yes

.include <bsd.port.mk>
