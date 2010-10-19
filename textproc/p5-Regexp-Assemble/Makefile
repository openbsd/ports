# $OpenBSD: Makefile,v 1.2 2010/10/19 07:54:23 espie Exp $

COMMENT =	assemble multiple Regular Expressions into a single RE

MODULES =	cpan
USE_GROFF =	Yes
DISTNAME =	Regexp-Assemble-0.34
CATEGORIES =	textproc

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
