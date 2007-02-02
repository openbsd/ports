#	$OpenBSD: Makefile,v 1.10 2007/02/02 14:53:03 jasper Exp $

COMMENT=	"graph data structures in perl"

MODULES=	cpan
DISTNAME=	Graph-0.81
CATEGORIES=	perl5

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Heap-*:devel/p5-Heap
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
