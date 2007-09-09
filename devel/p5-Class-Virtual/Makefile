# $OpenBSD: Makefile,v 1.1.1.1 2007/09/09 23:24:25 sthen Exp $
COMMENT=	base class for virtual base classes

MODULES=	cpan
DISTNAME=	Class-Virtual-0.06
CATEGORIES=	devel

RUN_DEPENDS=	${BUILD_DEPENDS}
BUILD_DEPENDS=	::devel/p5-Class-Data-Inheritable \
		::devel/p5-Carp-Assert

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
