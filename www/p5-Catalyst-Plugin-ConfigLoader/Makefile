# $OpenBSD: Makefile,v 1.22 2016/03/20 19:57:15 naddy Exp $

COMMENT=	catalyst plugin to Config::Any

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Plugin-ConfigLoader-0.30
CATEGORIES=	www
REVISION=	0

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Config-Any>=0.23 \
		devel/p5-Data-Visitor \
		devel/p5-MRO-Compat \
		www/p5-Catalyst-Runtime>=5.80024

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_ARGS=	--skipdeps

.include <bsd.port.mk>
