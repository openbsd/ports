# $OpenBSD: Makefile,v 1.20 2016/03/20 19:56:55 naddy Exp $

COMMENT =	support for the SSH 2 protocol via libssh2

DISTNAME =	Net-SSH2-0.58
CATEGORIES =	net
MODULES =	cpan

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto perl ssl z ssh2

LIB_DEPENDS =	security/libssh2

.include <bsd.port.mk>
