# $OpenBSD: Makefile,v 1.12 2015/12/12 19:58:39 jasper Exp $

COMMENT=	DBI wrapper and abstraction layer

MODULES=	cpan

DISTNAME=	Rose-DB-0.777
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

pre-configure:
	find ${WRKSRC} -type f -name \*.orig -exec rm {} \;

.include <bsd.port.mk>
