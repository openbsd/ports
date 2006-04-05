# $OpenBSD: Makefile,v 1.1.1.1 2006/04/05 12:39:46 steven Exp $

COMMENT=	"portability layer for LIMIT emulation"

DISTNAME=	SQL-Abstract-Limit-0.12
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases perl5

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=SQL/}

RUN_DEPENDS=	::databases/p5-SQL-Abstract \
		::databases/p5-DBI
BUILD_DEPENDS=	${RUN_DEPENDS}
REGRESS_DEPENDS=::devel/p5-Test-Exception

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
