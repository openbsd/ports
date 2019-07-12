# $OpenBSD: Makefile,v 1.9 2019/07/12 20:43:54 sthen Exp $

COMMENT= 	RDBO and RHTMLO base classes for Catalyst
DISTNAME=	Catalyst-Controller-Rose-0.02
REVISION=	0
CATEGORIES=	databases www
MODULES=	cpan
PKG_ARCH=	*

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	databases/p5-Catalyst-Model-RDBO \
		databases/p5-Sort-SQL \
		devel/p5-YAML-Syck \
		www/p5-Rose-HTMLx-Form-Field-Autocomplete \
		databases/p5-Data-Pageset


.include <bsd.port.mk>
