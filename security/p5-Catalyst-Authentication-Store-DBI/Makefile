# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:58 naddy Exp $

COMMENT = 	storage class for Catalyst Authentication using DBI

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Catalyst-Authentication-Store-DBI-0.01
REVISION =	1
CATEGORIES =	security

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	databases/p5-Catalyst-Model-DBI \
		security/p5-Catalyst-Plugin-Authentication

.include <bsd.port.mk>
