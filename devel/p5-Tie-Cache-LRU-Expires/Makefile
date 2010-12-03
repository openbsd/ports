# $OpenBSD: Makefile,v 1.5 2010/12/03 11:44:37 ajacoutot Exp $
COMMENT=	LRU cache in memory with expiry

MODULES=	cpan
DISTNAME=	Tie-Cache-LRU-Expires-0.54
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Tie-Cache-LRU \
		devel/p5-Carp-Assert \
		devel/p5-Class-Virtual \
		devel/p5-Class-Data-Inheritable

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
