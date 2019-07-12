# $OpenBSD: Makefile,v 1.9 2019/07/12 20:49:06 sthen Exp $

COMMENT = 	storage class for Catalyst Authentication using DBI

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Catalyst-Authentication-Store-DBI-0.01
REVISION =	1
CATEGORIES =	security

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =	databases/p5-Catalyst-Model-DBI \
		security/p5-Catalyst-Plugin-Authentication

.include <bsd.port.mk>
