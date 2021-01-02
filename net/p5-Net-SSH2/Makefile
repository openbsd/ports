# $OpenBSD: Makefile,v 1.26 2021/01/02 16:40:03 benoit Exp $

COMMENT =	support for the SSH 2 protocol via libssh2

DISTNAME =	Net-SSH2-0.72
CATEGORIES =	net
MODULES =	cpan

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto perl ssl z ssh2

LIB_DEPENDS =		security/libssh2

# Needed to find libssh2
CONFIGURE_ARGS +=	lib=${LOCALBASE}/lib inc=${LOCALBASE}/include

.include <bsd.port.mk>
