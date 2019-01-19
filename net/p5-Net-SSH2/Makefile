# $OpenBSD: Makefile,v 1.21 2019/01/19 21:01:31 cwen Exp $

COMMENT =	support for the SSH 2 protocol via libssh2

DISTNAME =	Net-SSH2-0.69
CATEGORIES =	net
MODULES =	cpan

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto perl ssl z ssh2

LIB_DEPENDS =	security/libssh2

# Needed to find libssh2
CONFIGURE_ARGS +=	lib=${LOCALBASE}/lib inc=${LOCALBASE}/include

.include <bsd.port.mk>
