# $OpenBSD: Makefile,v 1.19 2013/03/11 11:44:44 espie Exp $

COMMENT=	catalyst plugin to Config::Any

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-ConfigLoader-0.30
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Config-Any>=0.23 \
		devel/p5-Data-Visitor \
		devel/p5-MRO-Compat \
		www/p5-Catalyst-Runtime>=5.80024

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_ARGS=	--skipdeps

.include <bsd.port.mk>
