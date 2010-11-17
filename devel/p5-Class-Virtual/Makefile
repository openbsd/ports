# $OpenBSD: Makefile,v 1.5 2010/11/17 22:50:57 sthen Exp $
COMMENT=	base class for virtual base classes

MODULES=	cpan
DISTNAME=	Class-Virtual-0.06
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Class-Data-Inheritable \
		devel/p5-Carp-Assert \
		devel/p5-Class-ISA

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
