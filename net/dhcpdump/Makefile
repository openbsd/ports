# $OpenBSD: Makefile,v 1.3 2019/07/12 20:48:25 sthen Exp $

COMMENT =		DHCP packet dumper

DISTNAME =		dhcpdump-1.8
REVISION =		0

CATEGORIES =		net

HOMEPAGE =		http://mavetju.org/unix/general.php

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =		http://mavetju.org/download/

WANTLIB =		c pcap

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dhcpdump ${PREFIX}/sbin/
	${INSTALL_MAN} ${WRKSRC}/dhcpdump.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
