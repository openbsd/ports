# $OpenBSD: Makefile,v 1.6 2015/01/21 14:40:10 sthen Exp $

COMMENT = 	storage class for Catalyst Authentication using DBI

MODULES =	cpan
DISTNAME =	Catalyst-Authentication-Store-DBI-0.01
REVISION =	0
CATEGORIES =	security

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	databases/p5-Catalyst-Model-DBI \
		security/p5-Catalyst-Plugin-Authentication

.include <bsd.port.mk>
