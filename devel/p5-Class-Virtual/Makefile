# $OpenBSD: Makefile,v 1.6 2010/12/03 11:44:28 ajacoutot Exp $
COMMENT=	base class for virtual base classes

MODULES=	cpan
DISTNAME=	Class-Virtual-0.06
REVISION=	1
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
