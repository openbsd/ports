# $OpenBSD: Makefile,v 1.9 2013/03/17 05:17:01 benoit Exp $

COMMENT =	interface to md4 message-digest algorithm

DISTNAME =	Digest-MD4-1.8
CATEGORIES =	security

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Digest::MD4: perl
#
# This implementation is derived from the reference C code in RFC 1320.
# See "A.3 md4c.c" for the copyright notice.
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MODULES =	cpan

.include <bsd.port.mk>
