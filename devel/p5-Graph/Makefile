#	$OpenBSD: Makefile,v 1.7 2006/07/30 12:49:54 jasper Exp $

COMMENT=	"graph data structures in perl"

PKG_ARCH=	*
DISTNAME=	Graph-0.78
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
