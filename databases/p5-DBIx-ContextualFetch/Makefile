# $OpenBSD: Makefile,v 1.1.1.1 2004/05/20 10:49:53 sturm Exp $

COMMENT=	"add contextual fetches to DBI"

DISTNAME=	DBIx-ContextualFetch-1.01
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases perl5

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=DBIx/}

CONFIGURE_STYLE=perl

RUN_DEPENDS=	::databases/p5-DBI
BUILD_DEPENDS=	${RUN_DEPENDS}
REGRESS_DEPENDS=::databases/p5-DBD-SQLite

PKG_ARCH=	*

.include <bsd.port.mk>
