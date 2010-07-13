# $OpenBSD: Makefile,v 1.3 2010/07/13 19:46:13 sthen Exp $

COMMENT =	tie to an existing object

MODULES =	cpan
DISTNAME =	Tie-ToObject-0.03
REVISION =	0
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
