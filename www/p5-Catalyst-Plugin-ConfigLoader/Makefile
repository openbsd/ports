# $OpenBSD: Makefile,v 1.20 2015/01/21 14:42:33 sthen Exp $

COMMENT=	catalyst plugin to Config::Any

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-ConfigLoader-0.30
CATEGORIES=	www

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
