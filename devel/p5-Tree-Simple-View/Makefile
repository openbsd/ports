# $OpenBSD: Makefile,v 1.6 2010/12/03 11:44:38 ajacoutot Exp $

COMMENT=	class for viewing Tree::Simple hierarchies

DISTNAME=	Tree-Simple-View-0.17
REVISION=	0
CATEGORIES=	devel

MODULES=	cpan
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		devel/p5-Class-Throwable>=0.1 \
			devel/p5-Test-Exception>=0.15 \
			devel/p5-Test-LongString \
			devel/p5-Tree-Simple>=1.07

.include <bsd.port.mk>
