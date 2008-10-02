# $OpenBSD: Makefile,v 1.3 2008/10/02 20:35:08 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	a meta object protocol for perl 5

MODULES=	cpan
DISTNAME=	Class-MOP-0.49
PKGNAME=	p5-${DISTNAME}p0
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
