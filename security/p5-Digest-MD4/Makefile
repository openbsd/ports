# $OpenBSD: Makefile,v 1.7 2012/08/23 15:52:47 sthen Exp $

COMMENT =	interface to md4 message-digest algorithm

DISTNAME =	Digest-MD4-1.5
CATEGORIES =	security

REVISION =	3

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Digest::MD4: perl
#
# This implementation is derived from the reference C code in RFC 1320.
# See "A.3 md4c.c" for the copyright notice.
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c

MODULES =	cpan

.include <bsd.port.mk>
