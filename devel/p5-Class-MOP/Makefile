# $OpenBSD: Makefile,v 1.2 2007/12/21 02:42:49 msf Exp $

SHARED_ONLY=	Yes

COMMENT=	a meta object protocol for perl 5

MODULES=	cpan
DISTNAME=	Class-MOP-0.49
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
