# $OpenBSD: Makefile,v 1.19 2020/07/03 21:45:56 sthen Exp $

COMMENT=	sensible default end action for catalyst

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Action-RenderView-0.16
CATEGORIES=	www
REVISION=	1

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Data-Visitor>=0.24 \
		devel/p5-MRO-Compat \
		www/p5-Catalyst-Runtime>=5.80030

TEST_DEPENDS=www/p5-HTTP-Request-AsCGI

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE=modinst

.include <bsd.port.mk>
