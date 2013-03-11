# $OpenBSD: Makefile,v 1.9 2013/03/11 02:52:06 espie Exp $

COMMENT=	seamless DB up- and downgrades

MODULES=	cpan
DISTNAME=	DBIx-Migration-0.05
REVISION=	1
CATEGORIES=	databases
USE_GROFF =	Yes

CONFIGURE_STYLE=modbuild

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Class-Accessor \
		devel/p5-File-Slurp
TEST_DEPENDS=databases/p5-DBD-SQLite

MAKE_ENV+=	TEST_POD=1

# perl
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
