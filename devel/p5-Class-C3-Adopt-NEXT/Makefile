# $OpenBSD: Makefile,v 1.1.1.1 2009/01/25 22:31:18 simon Exp $

COMMENT =	make NEXT suck less

MODULES =	cpan
DISTNAME =	Class-C3-Adopt-NEXT-0.06
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =		::devel/p5-MRO-Compat

REGRESS_DEPENDS =	::devel/p5-Test-Exception

.include <bsd.port.mk>
