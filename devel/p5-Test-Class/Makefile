# $OpenBSD: Makefile,v 1.2 2005/07/11 19:54:30 aanriot Exp $

COMMENT=	"easily create test classes in an xUnit style"

DISTNAME=	Test-Class-0.11
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Test/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Devel-Symdump \
		::devel/p5-Test-Builder-Tester \
		::devel/p5-Test-Differences \
		::devel/p5-Test-Exception

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
