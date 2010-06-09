# $OpenBSD: Makefile,v 1.2 2010/06/09 08:55:09 kevlo Exp $

COMMENT =	tie to an existing object

MODULES =	cpan
DISTNAME =	Tie-ToObject-0.03
PKGNAME =	p5-${DISTNAME}p0
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	::devel/p5-Test-use-ok

.include <bsd.port.mk>
