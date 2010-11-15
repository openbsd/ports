# $OpenBSD: Makefile,v 1.4 2010/11/15 19:46:07 espie Exp $

COMMENT=	class for viewing Tree::Simple hierarchies

DISTNAME=	Tree-Simple-View-0.17
CATEGORIES=	devel

MODULES=	cpan
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		p5-Class-Throwable->=0.1:devel/p5-Class-Throwable \
			p5-Test-Exception->=0.15:devel/p5-Test-Exception \
			devel/p5-Test-LongString \
			p5-Tree-Simple->=1.07:devel/p5-Tree-Simple

.include <bsd.port.mk>
