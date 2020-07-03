# $OpenBSD: Makefile,v 1.11 2020/07/03 21:44:34 sthen Exp $

COMMENT= 	catalyst model for Class::DBI

DISTNAME =	Catalyst-Model-CDBI-0.12
CATEGORIES=	databases www
MODULES=	cpan
PKG_ARCH=	*
REVISION =	0

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		databases/p5-Class-DBI-Loader

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
