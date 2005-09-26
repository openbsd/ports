# $OpenBSD: Makefile,v 1.3 2005/09/26 17:28:13 sturm Exp $

NOT_FOR_ARCHS=		${NO_SHARED_ARCHS}

COMMENT=		'SQLite2 drivers for the Perl DBI'

DISTNAME=		DBD-SQLite2-0.33
PKGNAME=		p5-${DISTNAME}p0
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

CONFIGURE_STYLE=	perl
MAKE_FLAGS=		CC='${CC}' \
			LD='${CC}'

.include <bsd.port.mk>
