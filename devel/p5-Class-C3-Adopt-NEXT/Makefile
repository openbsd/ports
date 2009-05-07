# $OpenBSD: Makefile,v 1.2 2009/05/07 08:24:02 simon Exp $

COMMENT =	make NEXT suck less

MODULES =	cpan
DISTNAME =	Class-C3-Adopt-NEXT-0.09
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =		::devel/p5-MRO-Compat \
			::devel/p5-List-MoreUtils

REGRESS_DEPENDS =	::devel/p5-Test-Exception

.include <bsd.port.mk>
