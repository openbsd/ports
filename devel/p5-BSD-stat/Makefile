# $OpenBSD: Makefile,v 1.1.1.1 2005/02/23 17:56:07 sturm Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"stat() with BSD 4.4 extentions"

DISTNAME=	BSD-stat-1.21
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Alexander Bluhm <alexander_bluhm@genua.de>

# GPL or Artistic (same terms as Perl)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=BSD/}

CONFIGURE_STYLE=perl

.include <bsd.port.mk>
