# $OpenBSD: Makefile,v 1.1.1.1 2006/11/04 23:38:49 espie Exp $

COMMENT=	"recursively scan Perl code for dependencies"

DISTNAME=	Module-ScanDeps-0.68
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Module/}

CONFIGURE_STYLE=perl

REGRESS_DEPENDS=::devel/p5-Test-Pod

PKG_ARCH=	*

.include <bsd.port.mk>
