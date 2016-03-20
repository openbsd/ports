# $OpenBSD: Makefile,v 1.13 2016/03/20 19:57:01 naddy Exp $

COMMENT =	interface to md4 message-digest algorithm

DISTNAME =	Digest-MD4-1.9
CATEGORIES =	security
REVISION =	1

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Digest::MD4: perl
#
# This implementation is derived from the reference C code in RFC 1320.
# See "A.3 md4c.c" for the copyright notice.
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MODULES =	cpan
PKG_ARCH =	*

.include <bsd.port.mk>
