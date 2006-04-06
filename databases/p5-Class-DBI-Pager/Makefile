# $OpenBSD: Makefile,v 1.2 2006/04/06 18:25:17 steven Exp $

COMMENT=	"pager utility for Class::DBI"

DISTNAME=	Class-DBI-Pager-0.08
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases perl5

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Class/}

CONFIGURE_STYLE=perl

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::databases/p5-Class-DBI \
		::databases/p5-Data-Page \
		::devel/p5-Exporter-Lite
REGRESS_DEPENDS=::databases/p5-DBD-SQLite

PKG_ARCH=	*

.include <bsd.port.mk>
