# $OpenBSD: Makefile,v 1.10 2013/03/11 11:44:44 espie Exp $

COMMENT= 	HTML widget and validation framework for Catalyst

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-HTML-Widget-1.1
REVISION=	2
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		www/p5-HTML-Widget

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
