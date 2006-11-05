# $OpenBSD: Makefile,v 1.1.1.1 2006/11/05 13:47:47 espie Exp $

COMMENT=        "forbids warnings while testing"

DISTNAME=	Test-NoWarnings-0.082
PKGNAME=	p5-${DISTNAME}
CATEGORIES=     devel perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic and GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Test/}

RUN_DEPENDS=	::devel/p5-Test-Tester
REGRESS_DEPENDS=${RUN_DEPENDS}

CONFIGURE_STYLE=perl
PKG_ARCH=	*

.include <bsd.port.mk>
