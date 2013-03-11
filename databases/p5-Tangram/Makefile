# $OpenBSD: Makefile,v 1.8 2013/03/11 02:52:07 espie Exp $

COMMENT=	object-oriented DBMS

MODULES=	cpan

DISTNAME=	Tangram-2.10
REVISION=	1
CATEGORIES=	databases
USE_GROFF =	Yes

# GPL
PERMIT_PACKAGE_CDROM=	Yes

HOMEPAGE=		http://tangram.utsl.gen.nz/

RUN_DEPENDS=		devel/p5-Set-Object \
			devel/p5-Data-Lazy \
			databases/p5-DBI \
			devel/p5-Class-Date

# avoid interactive configuration, test with sqlite
post-extract:
	cp ${FILESDIR}/CONFIG ${WRKDIST}/t

TEST_DEPENDS=	devel/p5-Test-Manifest \
			databases/p5-DBD-SQLite

.include <bsd.port.mk>
