# $OpenBSD: Makefile,v 1.12 2013/03/11 11:35:53 espie Exp $

SHARED_ONLY =	Yes
COMMENT =	support for the SSH 2 protocol via libssh2

DISTNAME =	Net-SSH2-0.33
REVISION=	2
CATEGORIES =	net
MODULES =	cpan
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto ssl z ssh2

LIB_DEPENDS =	security/libssh2

.include <bsd.port.mk>
