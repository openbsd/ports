# $OpenBSD: Makefile,v 1.14 2013/03/11 11:44:44 espie Exp $

COMMENT=	sensible default end action for catalyst

MODULES=	cpan
DISTNAME=	Catalyst-Action-RenderView-0.16
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Data-Visitor>=0.24 \
		devel/p5-MRO-Compat \
		www/p5-Catalyst-Runtime>=5.80030

TEST_DEPENDS=www/p5-HTTP-Request-AsCGI

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE=modinst

.include <bsd.port.mk>
