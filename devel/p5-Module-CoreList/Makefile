# $OpenBSD: Makefile,v 1.3 2006/05/05 16:53:34 msf Exp $

COMMENT=	"see what modules shipped with versions of Perl"

DISTNAME=	Module-CoreList-2.04
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
