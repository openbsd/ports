# $OpenBSD: Makefile,v 1.7 2010/04/02 13:15:43 giovanni Exp $

COMMENT=	smart return-value object

MODULES=	cpan
DISTNAME=	Class-ReturnValue-0.55
CATEGORIES=	devel

MAINTAINER=	Michael Coulter <mjc@openbsd.org>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-Devel-StackTrace-*:devel/p5-Devel-StackTrace

CONFIGURE_ARGS= 	--no-prompts

.include <bsd.port.mk>
