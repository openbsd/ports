# $OpenBSD: Makefile,v 1.2 2004/04/18 06:41:11 robert Exp $

NOT_FOR_ARCHS=		${NO_SHARED_ARCHS}

COMMENT=		'SQLite drivers for the Perl DBI'

DISTNAME=		DBD-SQLite-0.31
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		databases perl5

MAINTAINER=		Robert Nagy <robert@openbsd.org>

# artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=DBD/}

BUILD_DEPENDS=		:p5-DBI->=1.08:databases/p5-DBI
RUN_DEPENDS=		:p5-DBI->=1.08:databases/p5-DBI
REGRESS_DEPENDS=	:sqlite->=2.8.12:databases/sqlite

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
