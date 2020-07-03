# $OpenBSD: Makefile,v 1.12 2020/07/03 21:44:34 sthen Exp $

COMMENT=	easier relationship specification in CDBI::L

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Class-DBI-Loader-Relationship-1.2
REVISION=	2
CATEGORIES=	databases

# Same as Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	databases/p5-Class-DBI \
		databases/p5-Class-DBI-Loader \
		textproc/p5-Lingua-EN-Inflect-Number

.include <bsd.port.mk>
