# $OpenBSD: Makefile,v 1.7 2007/07/29 22:39:05 simon Exp $

COMMENT=	easily create test classes in an xUnit style

MODULES=	cpan
DISTNAME=	Test-Class-0.24
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Devel-Symdump \
		::devel/p5-Test-Differences \
		::devel/p5-Test-Exception

.include <bsd.port.mk>
