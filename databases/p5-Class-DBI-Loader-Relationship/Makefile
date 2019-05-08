# $OpenBSD: Makefile,v 1.10 2019/05/08 15:44:45 danj Exp $

COMMENT=	easier relationship specification in CDBI::L

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Class-DBI-Loader-Relationship-1.2
REVISION=	1
CATEGORIES=	databases

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-Class-DBI \
		databases/p5-Class-DBI-Loader \
		textproc/p5-Lingua-EN-Inflect-Number

.include <bsd.port.mk>
