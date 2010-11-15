# $OpenBSD: Makefile,v 1.10 2010/11/15 19:46:06 espie Exp $

COMMENT=	easily create test classes in an xUnit style

MODULES=	cpan
DISTNAME=	Test-Class-0.31
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=modbuild

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Devel-Symdump \
		devel/p5-Test-Differences \
		devel/p5-Test-Exception

.include <bsd.port.mk>
