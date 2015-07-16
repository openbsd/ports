# $OpenBSD: Makefile,v 1.15 2015/07/16 23:57:25 ajacoutot Exp $

SHARED_ONLY =	Yes

COMMENT =	Patricia Trie perl module for fast IP address lookups

MODULES =	cpan
DISTNAME =	Net-Patricia-1.22
CATEGORIES =	net
REVISION =	0

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

RUN_DEPENDS =	net/p5-Net-CIDR-Lite \
		net/p5-Socket6

.include <bsd.port.mk>
