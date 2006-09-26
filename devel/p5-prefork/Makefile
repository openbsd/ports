# $OpenBSD: Makefile,v 1.2 2006/09/26 13:08:47 kevlo Exp $

COMMENT=	"optimized module loading for forking or non-forking processes"

DISTNAME=	prefork-1.01
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/A/AD/ADAMK/}

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl 

REGRESS_DEPENDS=	::devel/p5-Test-Pod

PKG_ARCH=	*

.include <bsd.port.mk>
