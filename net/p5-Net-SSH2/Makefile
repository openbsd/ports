# $OpenBSD: Makefile,v 1.3 2008/10/02 20:38:37 simon Exp $

SHARED_ONLY =	Yes
COMMENT =	support for the SSH 2 protocol via libssh2

DISTNAME =	Net-SSH2-0.18
PKGNAME =	p5-${DISTNAME}p1
CATEGORIES =	net
MODULES =	cpan

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

LIB_DEPENDS =	ssh2::security/libssh2

.include <bsd.port.mk>
