# $OpenBSD: Makefile,v 1.2 2004/01/14 16:05:21 jcs Exp $

COMMENT=	"Sybase database driver for the DBI module"

DISTNAME=	DBD-Sybase-1.02
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases perl5

MAINTAINER=	Xavier Santolaria <xavier@santolaria.net>

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

.include <bsd.port.mk>
