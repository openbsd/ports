# $OpenBSD: Makefile,v 1.24 2020/07/03 21:45:36 sthen Exp $

COMMENT =	support for the SSH 2 protocol via libssh2

DISTNAME =	Net-SSH2-0.70
CATEGORIES =	net
MODULES =	cpan
REVISION =	0

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto perl ssl z ssh2

LIB_DEPENDS =		security/libssh2

# Needed to find libssh2
CONFIGURE_ARGS +=	lib=${LOCALBASE}/lib inc=${LOCALBASE}/include

.include <bsd.port.mk>
