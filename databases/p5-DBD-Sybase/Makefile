# $OpenBSD: Makefile,v 1.6 2004/07/20 07:46:18 xsa Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"Sybase database driver for the DBI module"

DISTNAME=	DBD-Sybase-1.04
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases perl5

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# GPL/Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=DBD/}

LIB_DEPENDS=	tds.2,sybdb.3,ct.1::databases/freetds
RUN_DEPENDS=	:p5-DBI-*:databases/p5-DBI
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=perl
CONFIGURE_ENV+=	SYBASE=${LOCALBASE}

NO_REGRESS=	Yes

.include <bsd.port.mk>
