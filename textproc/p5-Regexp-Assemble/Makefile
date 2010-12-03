# $OpenBSD: Makefile,v 1.3 2010/12/03 11:46:49 ajacoutot Exp $

COMMENT =	assemble multiple Regular Expressions into a single RE

MODULES =	cpan
USE_GROFF =	Yes
DISTNAME =	Regexp-Assemble-0.34
REVISION =	0
CATEGORIES =	textproc

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
