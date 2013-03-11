# $OpenBSD: Makefile,v 1.13 2013/03/11 11:41:25 espie Exp $

COMMENT =	protect LAN IP address space by ARP spoofing

DISTNAME =	ipguard-1.04
CATEGORIES =	security

HOMEPAGE =	http://ipguard.deep.perm.ru/
MASTER_SITES =	${HOMEPAGE}files/

MAINTAINER =	Girish Venkatachalam <girish1729@gmail.com>

# BSD-like
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c pcap lib/libnet-1.1/net=11

LIB_DEPENDS =	libnet->=1.1.2.1p0,<1.2:net/libnet/1.1

NO_TEST =	Yes

.include <bsd.port.mk>
