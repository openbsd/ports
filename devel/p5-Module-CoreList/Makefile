# $OpenBSD: Makefile,v 1.7 2006/10/07 08:09:58 jasper Exp $

COMMENT=	"see what modules shipped with versions of Perl"

DISTNAME=	Module-CoreList-2.09
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Module/}

CONFIGURE_STYLE=perl
PKG_ARCH=	*

RUN_DEPENDS=	::devel/p5-version

.include <bsd.port.mk>
