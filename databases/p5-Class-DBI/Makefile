# $OpenBSD: Makefile,v 1.1.1.1 2004/05/26 13:36:07 sturm Exp $

COMMENT=	"simple database abstraction"

DISTNAME=	Class-DBI-0.95
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases perl5

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Class/}

CONFIGURE_STYLE= perl

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Class-Accessor \
		::devel/p5-Class-Data-Inheritable \
		::devel/p5-Class-Trigger \
		::devel/p5-Universal-moniker \
		::databases/p5-DBD-SQLite \
		::databases/p5-Ima-DBI

PKG_ARCH=	*

.include <bsd.port.mk>
