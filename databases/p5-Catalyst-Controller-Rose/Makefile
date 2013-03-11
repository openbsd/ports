# $OpenBSD: Makefile,v 1.6 2013/03/11 02:52:05 espie Exp $

COMMENT= 	RDBO and RHTMLO base classes for Catalyst
DISTNAME=	Catalyst-Controller-Rose-0.02
REVISION=	0
CATEGORIES=	databases www
MODULES=	cpan
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-Catalyst-Model-RDBO \
		databases/p5-Sort-SQL \
		devel/p5-YAML-Syck \
		www/p5-Rose-HTMLx-Form-Field-Autocomplete \
		databases/p5-Data-Pageset


.include <bsd.port.mk>
