# $OpenBSD: Makefile,v 1.10 2013/03/23 07:10:06 benoit Exp $

COMMENT =	interface to md4 message-digest algorithm

DISTNAME =	Digest-MD4-1.9
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
