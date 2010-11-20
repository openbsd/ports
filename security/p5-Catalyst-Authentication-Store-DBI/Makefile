# $OpenBSD: Makefile,v 1.3 2010/11/20 17:22:44 espie Exp $

COMMENT = 	storage class for Catalyst Authentication using DBI

MODULES =	cpan
DISTNAME =	Catalyst-Authentication-Store-DBI-0.01
CATEGORIES =	security

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

USE_GROFF =	Yes
RUN_DEPENDS =	databases/p5-Catalyst-Model-DBI \
		security/p5-Catalyst-Plugin-Authentication

.include <bsd.port.mk>
