#	$OpenBSD: Makefile,v 1.5 2006/06/14 19:31:24 steven Exp $

COMMENT=	"graph data structures in perl"

PKG_ARCH=	*
DISTNAME=	Graph-0.75
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	perl5 devel

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Graph/}

CONFIGURE_STYLE= perl

RUN_DEPENDS=	:p5-Heap-*:devel/p5-Heap
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
