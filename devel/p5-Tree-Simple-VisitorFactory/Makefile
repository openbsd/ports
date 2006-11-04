# $OpenBSD: Makefile,v 1.1.1.1 2006/11/04 19:03:02 espie Exp $

COMMENT=	"factory for Tree::Simple visitor objects"

DISTNAME=	Tree-Simple-VisitorFactory-0.10
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Tree/}

RUN_DEPENDS=	::devel/p5-Tree-Simple
REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-Test-Exception \
		::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
