# $OpenBSD: Makefile,v 1.10 2010/12/03 11:45:42 ajacoutot Exp $

SHARED_ONLY =	Yes
COMMENT =	support for the SSH 2 protocol via libssh2

DISTNAME =	Net-SSH2-0.33
REVISION=	1
CATEGORIES =	net
MODULES =	cpan
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

LIB_DEPENDS =	security/libssh2

WANTLIB +=     crypto ssl z ssh2

.include <bsd.port.mk>
