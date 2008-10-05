# $OpenBSD: Makefile,v 1.2 2008/10/05 21:24:57 jasper Exp $

COMMENT=	class for viewing Tree::Simple hierarchies

DISTNAME=	Tree-Simple-View-0.17
CATEGORIES=	devel

MODULES=	cpan

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		:p5-Class-Throwable->=0.1:devel/p5-Class-Throwable \
			:p5-Test-Exception->=0.15:devel/p5-Test-Exception \
			:p5-Test-LongString-*:devel/p5-Test-LongString \
			:p5-Tree-Simple->=1.07:devel/p5-Tree-Simple

.include <bsd.port.mk>
