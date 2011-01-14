# $OpenBSD: Makefile,v 1.11 2011/01/14 22:50:56 jasper Exp $

COMMENT=	smart return-value object

MODULES=	cpan
DISTNAME=	Class-ReturnValue-0.55
REVISION=	1
CATEGORIES=	devel
USE_GROFF =	Yes

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Devel-StackTrace

CONFIGURE_ARGS= 	--no-prompts

.include <bsd.port.mk>
