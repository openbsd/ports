# $OpenBSD: Makefile,v 1.2 2010/07/03 02:44:13 naddy Exp $
COMMENT=	LRU cache in memory

MODULES=	cpan
DISTNAME=	Tie-Cache-LRU-0.21
CATEGORIES=	devel

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-enum \
		::devel/p5-Carp-Assert \
		::devel/p5-Class-Data-Inheritable \
		::devel/p5-Class-Virtual

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
