#	$OpenBSD: Makefile,v 1.9 2006/11/25 16:32:35 espie Exp $

COMMENT=	"graph data structures in perl"

MODULES=	cpan
DISTNAME=	Graph-0.80
CATEGORIES=	perl5

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Heap-*:devel/p5-Heap
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
