# $OpenBSD: Makefile,v 1.7 2013/03/11 02:52:06 espie Exp $

COMMENT=	easier relationship specification in CDBI::L

MODULES=	cpan
DISTNAME=	Class-DBI-Loader-Relationship-1.2
REVISION=	0
CATEGORIES=	databases
USE_GROFF =	Yes

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-Class-DBI \
		databases/p5-Class-DBI-Loader \
		textproc/p5-Lingua-EN-Inflect-Number

.include <bsd.port.mk>
