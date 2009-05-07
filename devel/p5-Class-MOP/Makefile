# $OpenBSD: Makefile,v 1.7 2009/05/07 08:14:51 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	meta object protocol for perl 5

MODULES=	cpan
DISTNAME=	Class-MOP-0.83
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
