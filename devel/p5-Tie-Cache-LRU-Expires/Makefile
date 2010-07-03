# $OpenBSD: Makefile,v 1.2 2010/07/03 02:44:13 naddy Exp $
COMMENT=	LRU cache in memory with expiry

MODULES=	cpan
DISTNAME=	Tie-Cache-LRU-Expires-0.54
CATEGORIES=	devel

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Tie-Cache-LRU \
		::devel/p5-Carp-Assert \
		::devel/p5-Class-Virtual \
		::devel/p5-Class-Data-Inheritable

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
