# $OpenBSD: Makefile,v 1.9 2013/03/11 11:44:47 espie Exp $

COMMENT=		find URIs in arbitrary text

MODULES=		cpan
DISTNAME=		URI-Find-0.16
REVISION=		1
CATEGORIES=		www
USE_GROFF =		Yes

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		www/p5-URI>=1.00
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
