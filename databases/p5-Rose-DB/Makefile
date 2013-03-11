# $OpenBSD: Makefile,v 1.10 2013/03/11 02:52:06 espie Exp $

COMMENT=	DBI wrapper and abstraction layer

MODULES=	cpan
USE_GROFF =	Yes

DISTNAME=	Rose-DB-0.755
REVISION=	0
CATEGORIES=	databases

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	math/p5-Bit-Vector \
		devel/p5-DateTime-Format-Pg \
		devel/p5-DateTime-Format-MySQL \
		databases/p5-SQL-ReservedWords \
		devel/p5-Time-Clock \
		databases/p5-DBI \
		databases/p5-Rose-Object \
		databases/p5-Rose-DateTime \
		devel/p5-Clone \
		devel/p5-YAML-Syck

TEST_FLAGS +=	AUTOMATED_TESTING=1
.include <bsd.port.mk>
