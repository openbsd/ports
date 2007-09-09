# $OpenBSD: Makefile,v 1.1.1.1 2007/09/09 23:26:17 sthen Exp $
COMMENT=	LRU cache in memory

MODULES=	cpan
DISTNAME=	Tie-Cache-LRU-0.21
CATEGORIES=	devel

BUILD_DEPENDS=	::devel/p5-enum \
		::devel/p5-Carp-Assert \
		::devel/p5-Class-Data-Inheritable \
		::devel/p5-Class-Virtual
RUN_DEPENDS=	${BUILD_DEPENDS}

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
