# $OpenBSD: Makefile,v 1.15 2015/01/21 14:40:10 sthen Exp $

SHARED_ONLY =	Yes
COMMENT =	support for the SSH 2 protocol via libssh2

DISTNAME =	Net-SSH2-0.53
CATEGORIES =	net
MODULES =	cpan

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto ssl z ssh2

LIB_DEPENDS =	security/libssh2

.include <bsd.port.mk>
