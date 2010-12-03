# $OpenBSD: Makefile,v 1.12 2010/12/03 11:44:36 ajacoutot Exp $

COMMENT=	easily create test classes in an xUnit style

MODULES=	cpan
DISTNAME=	Test-Class-0.31
REVISION=	1
CATEGORIES=	devel
USE_GROFF=	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=modbuild

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Devel-Symdump \
		devel/p5-Test-Differences \
		devel/p5-Test-Exception \
		devel/p5-Class-ISA

.include <bsd.port.mk>
