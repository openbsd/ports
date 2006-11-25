# $OpenBSD: Makefile,v 1.7 2006/11/25 16:32:34 espie Exp $

COMMENT=	"validate method/function parameters"

MODULES=	cpan
DISTNAME=	Class-Container-0.12
CATEGORIES=	devel

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-Params-Validate->=0.23:devel/p5-Params-Validate

.include <bsd.port.mk>
