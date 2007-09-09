# $OpenBSD: Makefile,v 1.1.1.1 2007/09/09 23:27:04 sthen Exp $
COMMENT=	LRU cache in memory with expiry

MODULES=	cpan
DISTNAME=	Tie-Cache-LRU-Expires-0.54
CATEGORIES=	devel

BUILD_DEPENDS=	::devel/p5-Tie-Cache-LRU \
		::devel/p5-Carp-Assert \
		::devel/p5-Class-Virtual \
		::devel/p5-Class-Data-Inheritable
RUN_DEPENDS=	${BUILD_DEPENDS}

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
