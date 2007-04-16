# $OpenBSD: Makefile,v 1.1.1.1 2007/04/16 21:20:39 espie Exp $

COMMENT= 	"RDBO and RHTMLO base classes for Catalyst"
DISTNAME=	Catalyst-Controller-Rose-0.02
CATEGORIES=	databases www
MODULES=	cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::databases/p5-Catalyst-Model-RDBO \
		::databases/p5-Sort-SQL \
		::devel/p5-YAML-Syck \
		::www/p5-Rose-HTMLx-Form-Field-Autocomplete \
		::databases/p5-Data-Pageset


.include <bsd.port.mk>
