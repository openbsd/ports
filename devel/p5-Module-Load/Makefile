# $OpenBSD: Makefile,v 1.1.1.1 2005/12/10 15:52:51 steven Exp $

COMMENT=	"runtime require of both modules and files"

DISTNAME=	Module-Load-0.10
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Module/}

# Same as Perl
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

CONFIGURE_STYLE=	perl

PKG_ARCH= *

.include <bsd.port.mk>

