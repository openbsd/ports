# $OpenBSD: Makefile,v 1.10 2009/10/27 15:03:56 kevlo Exp $

SHARED_ONLY=	Yes

COMMENT=	meta object protocol for perl 5

MODULES=	cpan
DISTNAME=	Class-MOP-0.94
PKGNAME=	p5-${DISTNAME}p0
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
		:p5-Sub-Name->=0.04:devel/p5-Sub-Name \
		::devel/p5-Task-Weaken

REGRESS_DEPENDS=::devel/p5-Test-Exception \
		::devel/p5-Test-LeakTrace \
		::devel/p5-Test-Output \
		::devel/p5-SUPER

.include <bsd.port.mk>
