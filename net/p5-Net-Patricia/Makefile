# $OpenBSD: Makefile,v 1.17 2019/07/12 20:48:39 sthen Exp $

COMMENT =	Patricia Trie perl module for fast IP address lookups

MODULES =	cpan
DISTNAME =	Net-Patricia-1.22
CATEGORIES =	net
REVISION =	0

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += c perl

RUN_DEPENDS =	net/p5-Net-CIDR-Lite \
		net/p5-Socket6

.include <bsd.port.mk>
