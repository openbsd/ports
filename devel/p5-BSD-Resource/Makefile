# $OpenBSD: Makefile,v 1.11 2004/02/07 11:58:31 sturm Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"BSD process resource limit and priority functions"

DISTNAME=	BSD-Resource-1.23
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Dan Weeks <danimal@danimal.org>

# GPL or Artistic (same terms as Perl)
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=BSD/}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
