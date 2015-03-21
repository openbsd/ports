# $OpenBSD: Makefile,v 1.15 2015/03/21 13:07:09 sthen Exp $

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

NO_TEST =	Yes

.include <bsd.port.mk>
