#	$OpenBSD: Makefile,v 1.1.1.1 2005/03/03 01:02:40 espie Exp $

COMMENT=	"graph data structures in perl"

PKG_ARCH=	*
DISTNAME=	Graph-0.58
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	perl5 devel

# perl licence
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# Should be there, but it's not yet
#MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Graph/}
MASTER_SITES=	http://search.cpan.org/CPAN/authors/id/J/JH/JHI/

CONFIGURE_STYLE= perl

RUN_DEPENDS=	:p5-Heap-*:devel/p5-Heap
REGRESS_DEPENDS=:p5-Heap-*:devel/p5-Heap

.include <bsd.port.mk>
