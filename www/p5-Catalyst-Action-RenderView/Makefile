# $OpenBSD: Makefile,v 1.15 2015/01/21 14:42:32 sthen Exp $

COMMENT=	sensible default end action for catalyst

MODULES=	cpan
DISTNAME=	Catalyst-Action-RenderView-0.16
CATEGORIES=	www

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
