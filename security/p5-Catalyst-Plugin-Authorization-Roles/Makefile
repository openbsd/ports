# $OpenBSD: Makefile,v 1.12 2013/03/11 11:41:26 espie Exp $

COMMENT=	role based authorization for Catalyst

DISTNAME=	Catalyst-Plugin-Authorization-Roles-0.09
CATEGORIES=	security

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
USE_GROFF =	Yes

RUN_DEPENDS=	devel/p5-Set-Object \
		devel/p5-Universal-isa \
		security/p5-Catalyst-Plugin-Authentication
TEST_DEPENDS=devel/p5-Test-Exception

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
