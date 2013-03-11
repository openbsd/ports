# $OpenBSD: Makefile,v 1.15 2013/03/11 10:50:13 espie Exp $

COMMENT=	stack trace for catalyst

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-StackTrace-0.11
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Devel-StackTrace \
		devel/p5-MRO-Compat \
		www/p5-Catalyst-Runtime

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
