# $OpenBSD: Makefile,v 1.15 2019/07/12 20:49:08 sthen Exp $

COMMENT =	interface to md4 message-digest algorithm

DISTNAME =	Digest-MD4-1.9
CATEGORIES =	security
REVISION =	2

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Digest::MD4: perl
#
# This implementation is derived from the reference C code in RFC 1320.
# See "A.3 md4c.c" for the copyright notice.
PERMIT_PACKAGE =	Yes

WANTLIB += c perl

MODULES =	cpan

.include <bsd.port.mk>
