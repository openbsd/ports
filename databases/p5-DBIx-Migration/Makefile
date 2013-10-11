# $OpenBSD: Makefile,v 1.10 2013/10/11 23:48:21 naddy Exp $

COMMENT=	seamless DB up- and downgrades

MODULES=	cpan
DISTNAME=	DBIx-Migration-0.05
REVISION=	1
CATEGORIES=	databases

CONFIGURE_STYLE=modbuild

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Class-Accessor \
		devel/p5-File-Slurp
TEST_DEPENDS=databases/p5-DBD-SQLite

MAKE_ENV+=	TEST_POD=1

# perl
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
