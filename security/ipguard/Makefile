# $OpenBSD: Makefile,v 1.10 2011/05/11 08:24:40 ajacoutot Exp $

COMMENT =	protect LAN IP address space by ARP spoofing

DISTNAME =	ipguard-1.02
CATEGORIES =	security
REVISION =	1

HOMEPAGE =	http://ipguard.deep.perm.ru/
MASTER_SITES =	${HOMEPAGE}files/

MAINTAINER =	Girish Venkatachalam <girish1729@gmail.com>

# BSD-like
PERMIT_PACKAGE_CDROM =	Yes 
PERMIT_PACKAGE_FTP =	Yes 
PERMIT_DISTFILES_CDROM =Yes 
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c pcap lib/libnet-1.1/net=11

LIB_DEPENDS =	libnet->=1.1.2.1p0,<1.2:net/libnet/1.1

USE_GROFF =	Yes
NO_REGRESS =	Yes

.include <bsd.port.mk>
