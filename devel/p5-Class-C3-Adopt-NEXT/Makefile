# $OpenBSD: Makefile,v 1.3 2010/10/18 17:47:56 espie Exp $

COMMENT =	make NEXT suck less

MODULES =	cpan
DISTNAME =	Class-C3-Adopt-NEXT-0.09
CATEGORIES =	devel
USE_GROFF =	Yes

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
