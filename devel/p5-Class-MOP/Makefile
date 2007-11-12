# $OpenBSD: Makefile,v 1.1.1.1 2007/11/12 14:21:19 msf Exp $

COMMENT=	a meta object protocol for perl 5

MODULES=	cpan
DISTNAME=	Class-MOP-0.42
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CPAN_AUTHOR=	STEVAN

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Sub-Name 
REGRESS_DEPENDS= ::devel/p5-Test-Exception

.include <bsd.port.mk>
