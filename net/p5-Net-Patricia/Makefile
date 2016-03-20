# $OpenBSD: Makefile,v 1.16 2016/03/20 19:56:54 naddy Exp $

COMMENT =	Patricia Trie perl module for fast IP address lookups

MODULES =	cpan
DISTNAME =	Net-Patricia-1.22
CATEGORIES =	net
REVISION =	0

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c perl

RUN_DEPENDS =	net/p5-Net-CIDR-Lite \
		net/p5-Socket6

.include <bsd.port.mk>
