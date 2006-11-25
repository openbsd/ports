# $OpenBSD: Makefile,v 1.5 2006/11/25 16:32:34 espie Exp $

COMMENT=	"smart return-value object"

MODULES=	cpan
DISTNAME=	Class-ReturnValue-0.53
PKGNAME=	p5-${DISTNAME}p0
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
