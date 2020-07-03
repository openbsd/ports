# $OpenBSD: Makefile,v 1.10 2020/07/03 21:44:34 sthen Exp $

COMMENT= 	RDBO and RHTMLO base classes for Catalyst
DISTNAME=	Catalyst-Controller-Rose-0.02
REVISION=	1
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
