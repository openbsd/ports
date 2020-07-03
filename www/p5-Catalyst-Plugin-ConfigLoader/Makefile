# $OpenBSD: Makefile,v 1.24 2020/07/03 21:45:57 sthen Exp $

COMMENT=	catalyst plugin to Config::Any

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Plugin-ConfigLoader-0.30
CATEGORIES=	www
REVISION=	1

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Config-Any>=0.23 \
		devel/p5-Data-Visitor \
		devel/p5-MRO-Compat \
		www/p5-Catalyst-Runtime>=5.80024

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_ARGS=	--skipdeps

.include <bsd.port.mk>
