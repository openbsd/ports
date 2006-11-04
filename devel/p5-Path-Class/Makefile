# $OpenBSD: Makefile,v 1.1.1.1 2006/11/04 17:25:02 espie Exp $

COMMENT=	"cross-platform path manipulation"

DISTNAME=	Path-Class-0.15
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# Looks like a cpan bug to me ?
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../by-authors/id/K/KW/KWILLIAMS/}

CONFIGURE_STYLE=perl modbuild

PKG_ARCH=	*

.include <bsd.port.mk>
