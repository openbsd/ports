# $OpenBSD: Makefile,v 1.3 2010/04/15 13:56:34 ajacoutot Exp $

COMMENT=	object-oriented DBMS

MODULES=	cpan

DISTNAME=	Tangram-2.10
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	databases

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
