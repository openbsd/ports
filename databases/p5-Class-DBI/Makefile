# $OpenBSD: Makefile,v 1.2 2006/04/06 18:21:38 steven Exp $

COMMENT=	"simple database abstraction"

V=		3.0.14
DISTNAME=	Class-DBI-v${V}
PKGNAME=	p5-Class-DBI-${V}
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
		::devel/p5-Clone \
		::devel/p5-Universal-moniker \
		::devel/p5-version \
		::databases/p5-Ima-DBI
REGRESS_DEPENDS=::databases/p5-DBD-SQLite

PKG_ARCH=	*

.include <bsd.port.mk>
