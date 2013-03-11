# $OpenBSD: Makefile,v 1.5 2013/03/11 11:41:26 espie Exp $

COMMENT = 	storage class for Catalyst Authentication using DBI

MODULES =	cpan
DISTNAME =	Catalyst-Authentication-Store-DBI-0.01
REVISION =	0
CATEGORIES =	security

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

USE_GROFF =	Yes
RUN_DEPENDS =	databases/p5-Catalyst-Model-DBI \
		security/p5-Catalyst-Plugin-Authentication

.include <bsd.port.mk>
