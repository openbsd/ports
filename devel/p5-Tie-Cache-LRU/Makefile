# $OpenBSD: Makefile,v 1.5 2010/12/03 11:44:37 ajacoutot Exp $
COMMENT=	LRU cache in memory

MODULES=	cpan
DISTNAME=	Tie-Cache-LRU-0.21
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-enum \
		devel/p5-Carp-Assert \
		devel/p5-Class-Data-Inheritable \
		devel/p5-Class-Virtual

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
