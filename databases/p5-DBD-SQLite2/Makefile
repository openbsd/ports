# $OpenBSD: Makefile,v 1.1.1.1 2004/12/02 21:32:03 robert Exp $

NOT_FOR_ARCHS=		${NO_SHARED_ARCHS}

COMMENT=		'SQLite3 drivers for the Perl DBI'

DISTNAME=		DBD-SQLite2-0.33
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
REGRESS_DEPENDS=	:sqlite3->=3.0.8:databases/sqlite3

CONFIGURE_STYLE=	perl
MAKE_FLAGS=		CC='${CC}' \
			LD='${CC}'

.include <bsd.port.mk>
