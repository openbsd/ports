# $OpenBSD: Makefile,v 1.18 2015/10/30 22:24:42 benoit Exp $

SHARED_ONLY =	Yes
COMMENT =	support for the SSH 2 protocol via libssh2

DISTNAME =	Net-SSH2-0.56
CATEGORIES =	net
MODULES =	cpan

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto ssl z ssh2

LIB_DEPENDS =	security/libssh2

.include <bsd.port.mk>
