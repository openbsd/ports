# $OpenBSD: Makefile,v 1.5 2009/02/01 00:58:50 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	meta object protocol for perl 5

MODULES=	cpan
DISTNAME=	Class-MOP-0.75
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Devel-GlobalDestruction \
		::devel/p5-MRO-Compat \
		::devel/p5-Sub-Identify \
		:p5-Sub-Name->=0.04:devel/p5-Sub-Name 
REGRESS_DEPENDS= ::devel/p5-Test-Exception

.include <bsd.port.mk>
