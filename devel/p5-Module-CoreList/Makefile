# $OpenBSD: Makefile,v 1.1.1.1 2004/12/08 18:00:30 xsa Exp $

COMMENT=	"see what modules shipped with versions of Perl"

DISTNAME=	Module-CoreList-1.97
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Module/}

CONFIGURE_STYLE=perl
PKG_ARCH=	*

.include <bsd.port.mk>
