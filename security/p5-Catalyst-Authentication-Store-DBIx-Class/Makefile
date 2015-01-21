# $OpenBSD: Makefile,v 1.7 2015/01/21 14:40:10 sthen Exp $

COMMENT =	storage class for Catalyst Authentication using DBIx::Class

MODULES =	cpan
DISTNAME =	Catalyst-Authentication-Store-DBIx-Class-0.1502
CATEGORIES =	security

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	databases/p5-DBIx-Class \
		databases/p5-Catalyst-Model-DBIC-Schema \
		devel/p5-Moose \
		devel/p5-namespace-autoclean \
		devel/p5-Try-Tiny \
		security/p5-Catalyst-Plugin-Authentication>=0.10008 \
		www/p5-Catalyst-Runtime
TEST_DEPENDS =	devel/p5-Test-WWW-Mechanize-Catalyst \
			security/p5-Catalyst-Plugin-Authorization-Roles \
			www/p5-Catalyst-Plugin-Session-State-Cookie

MAKE_ENV =	TEST_POD=Yes

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
