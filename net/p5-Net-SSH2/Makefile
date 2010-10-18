# $OpenBSD: Makefile,v 1.7 2010/10/18 18:36:54 espie Exp $

SHARED_ONLY =	Yes
COMMENT =	support for the SSH 2 protocol via libssh2

DISTNAME =	Net-SSH2-0.33
REVISION=	0
CATEGORIES =	net
MODULES =	cpan
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

LIB_DEPENDS =	ssh2::security/libssh2

WANTLIB +=     crypto ssl z

.include <bsd.port.mk>
