# $OpenBSD: Makefile,v 1.10 2013/03/11 02:52:07 espie Exp $

COMMENT=	generate SQL from Perl data structures

MODULES=	cpan
DISTNAME=	SQL-Abstract-1.72
CATEGORIES=	databases
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_ARGS+=--skipdeps

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Class-Accessor-Grouped \
		devel/p5-Getopt-Long-Descriptive \
		devel/p5-Hash-Merge
TEST_DEPENDS=devel/p5-Test-Deep \
		devel/p5-Test-Exception \
		devel/p5-Test-Warn

.include <bsd.port.mk>
