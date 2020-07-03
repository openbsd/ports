# $OpenBSD: Makefile,v 1.10 2020/07/03 21:45:39 sthen Exp $

COMMENT = 	storage class for Catalyst Authentication using DBI

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Catalyst-Authentication-Store-DBI-0.01
REVISION =	2
CATEGORIES =	security

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =	databases/p5-Catalyst-Model-DBI \
		security/p5-Catalyst-Plugin-Authentication

.include <bsd.port.mk>
