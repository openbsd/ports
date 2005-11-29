# $OpenBSD: Makefile,v 1.2 2005/11/29 17:41:05 steven Exp $

COMMENT=	"see what modules shipped with versions of Perl"

DISTNAME=	Module-CoreList-2.02
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Module/}

CONFIGURE_STYLE=perl
PKG_ARCH=	*

.include <bsd.port.mk>
