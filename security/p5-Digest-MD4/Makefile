# $OpenBSD: Makefile,v 1.16 2020/07/03 21:45:42 sthen Exp $

COMMENT =	interface to md4 message-digest algorithm

DISTNAME =	Digest-MD4-1.9
CATEGORIES =	security
REVISION =	3

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Digest::MD4: perl
#
# This implementation is derived from the reference C code in RFC 1320.
# See "A.3 md4c.c" for the copyright notice.
PERMIT_PACKAGE =	Yes

WANTLIB += c perl

MODULES =	cpan

.include <bsd.port.mk>
