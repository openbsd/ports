# $OpenBSD

COMMENT =	protect LAN IP adress space by ARP spoofing

DISTNAME =	ipguard-1.00
PKGNAME =	${DISTNAME}p0
CATEGORIES =	security

HOMEPAGE =	http://ipguard.deep.perm.ru/
MASTER_SITES =	${HOMEPAGE}files/

MAINTAINER =	Girish Venkatachalam <girish1729@gmail.com>

# BSD-like
PERMIT_PACKAGE_CDROM =	Yes 
PERMIT_PACKAGE_FTP =	Yes 
PERMIT_DISTFILES_CDROM =Yes 
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c pcap

LIB_DEPENDS =	lib/libnet-1.1/net.=11:libnet-1.1*:net/libnet/1.1

NO_REGRESS =	Yes

.include <bsd.port.mk>
