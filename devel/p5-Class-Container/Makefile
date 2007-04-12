# $OpenBSD: Makefile,v 1.8 2007/04/12 18:59:35 jasper Exp $

COMMENT=	"validate method/function parameters"

MODULES=	cpan
DISTNAME=	Class-Container-0.12
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	devel

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-Params-Validate->=0.23:devel/p5-Params-Validate

.include <bsd.port.mk>
