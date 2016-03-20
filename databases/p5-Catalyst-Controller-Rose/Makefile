# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:09 naddy Exp $

COMMENT= 	RDBO and RHTMLO base classes for Catalyst
DISTNAME=	Catalyst-Controller-Rose-0.02
REVISION=	0
CATEGORIES=	databases www
MODULES=	cpan
PKG_ARCH=	*

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-Catalyst-Model-RDBO \
		databases/p5-Sort-SQL \
		devel/p5-YAML-Syck \
		www/p5-Rose-HTMLx-Form-Field-Autocomplete \
		databases/p5-Data-Pageset


.include <bsd.port.mk>
