# $OpenBSD: Makefile,v 1.1.1.1 2004/05/26 13:36:07 sturm Exp $

COMMENT=	"dynamic definition of Class::DBI sub classes"

DISTNAME=	Class-DBI-Loader-0.02
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
RUN_DEPENDS=	::databases/p5-Class-DBI 

PKG_ARCH=	*

.include <bsd.port.mk>
