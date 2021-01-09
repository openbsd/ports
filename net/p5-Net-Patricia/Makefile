# $OpenBSD: Makefile,v 1.19 2021/01/09 12:42:57 bluhm Exp $

COMMENT =	Patricia Trie perl module for fast IP address lookups

MODULES =	cpan
DISTNAME =	Net-Patricia-1.22
CATEGORIES =	net
REVISION =	2

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2, BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		c perl

RUN_DEPENDS =	net/p5-Net-CIDR-Lite>=0.20 \
		net/p5-Socket6

.include <bsd.port.mk>
