# $OpenBSD: Makefile,v 1.10 2019/07/12 20:43:54 sthen Exp $

COMMENT= 	catalyst model for Class::DBI

DISTNAME =	Catalyst-Model-CDBI-0.12
CATEGORIES=	databases www
MODULES=	cpan
PKG_ARCH=	*

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		databases/p5-Class-DBI-Loader

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
