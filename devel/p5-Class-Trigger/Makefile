# $OpenBSD: Makefile,v 1.2 2005/12/08 16:30:59 steven Exp $

COMMENT=	"add / call inheritable triggers"

DISTNAME=	Class-Trigger-0.10
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Class/}

CONFIGURE_STYLE=perl

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Class-Data-Inheritable \
		::devel/p5-IO-stringy

PKG_ARCH=	*

.include <bsd.port.mk>
