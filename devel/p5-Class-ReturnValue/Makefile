# $OpenBSD: Makefile,v 1.10 2010/12/03 11:44:28 ajacoutot Exp $

COMMENT=	smart return-value object

MODULES=	cpan
DISTNAME=	Class-ReturnValue-0.55
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Michael Coulter <mjc@openbsd.org>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Devel-StackTrace

CONFIGURE_ARGS= 	--no-prompts

.include <bsd.port.mk>
