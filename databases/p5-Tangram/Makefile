# $OpenBSD: Makefile,v 1.5 2010/10/18 17:06:08 espie Exp $

COMMENT=	object-oriented DBMS

MODULES=	cpan

DISTNAME=	Tangram-2.10
REVISION=	0
CATEGORIES=	databases
USE_GROFF =	Yes

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=		http://tangram.utsl.gen.nz/

RUN_DEPENDS=		::devel/p5-Set-Object \
			::devel/p5-Data-Lazy \
			::databases/p5-DBI \
			::devel/p5-Class-Date

# avoid interactive configuration, test with sqlite
post-extract:
	cp ${FILESDIR}/CONFIG ${WRKDIST}/t

REGRESS_DEPENDS=	::devel/p5-Test-Manifest \
			::databases/p5-DBD-SQLite

.include <bsd.port.mk>
