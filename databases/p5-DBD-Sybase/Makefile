# $OpenBSD: Makefile,v 1.1.1.1 2003/07/19 00:11:32 jcs Exp $

COMMENT=	"Sybase database driver for the DBI module"

DISTNAME=	DBD-Sybase-1.00
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases perl5

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN:=DBD/}

MAINTAINER=	Xavier Santolaria <xavier@santolaria.net>

# GPL/Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	gettext

LIB_DEPENDS=	tds.2,sybdb.3,ct.1::databases/freetds
BUILD_DEPENDS=	:p5-DBI-*:databases/p5-DBI
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE=perl
CONFIGURE_ENV+=	SYBASE=${LOCALBASE}

.include <bsd.port.mk>
