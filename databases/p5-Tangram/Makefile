# $OpenBSD: Makefile,v 1.11 2016/03/20 19:56:12 naddy Exp $

COMMENT=	object-oriented DBMS

MODULES=	cpan
PKG_ARCH=	*

DISTNAME =	Tangram-2.12
CATEGORIES=	databases

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
