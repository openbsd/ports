# $OpenBSD: Makefile,v 1.2 2006/06/24 12:16:35 msf Exp $

COMMENT=	"pager utility"

DISTNAME=	Data-Page-2.00
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases perl5

MAINTAINER=		Sean Comeau <scomeau@obscurity.org>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Class-Accessor-Chained \
		::devel/p5-Test-Exception
BUILD_DEPENDS=	${RUN_DEPENDS}

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Data/}

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
