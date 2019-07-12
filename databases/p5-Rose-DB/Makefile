# $OpenBSD: Makefile,v 1.16 2019/07/12 20:43:57 sthen Exp $

COMMENT=	DBI wrapper and abstraction layer

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	Rose-DB-0.778
CATEGORIES=	databases
FIX_EXTRACT_PERMISSIONS=Yes

# Same as Perl
PERMIT_PACKAGE=	Yes

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
