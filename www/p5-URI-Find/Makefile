# $OpenBSD: Makefile,v 1.6 2010/10/19 08:02:56 espie Exp $

COMMENT=		find URIs in arbitrary text

MODULES=		cpan
DISTNAME=		URI-Find-0.16
REVISION=	0
CATEGORIES=		www
USE_GROFF =	Yes

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		:p5-URI->=1.00:www/p5-URI
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
