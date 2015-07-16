# $OpenBSD: Makefile,v 1.16 2015/07/16 23:57:26 ajacoutot Exp $

SHARED_ONLY =	Yes
COMMENT =	support for the SSH 2 protocol via libssh2

DISTNAME =	Net-SSH2-0.53
CATEGORIES =	net
MODULES =	cpan
REVISION =	0

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto ssl z ssh2

LIB_DEPENDS =	security/libssh2

.include <bsd.port.mk>
