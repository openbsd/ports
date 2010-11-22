# $OpenBSD: Makefile,v 1.7 2010/11/22 08:36:52 espie Exp $

COMMENT=		find URIs in arbitrary text

MODULES=		cpan
DISTNAME=		URI-Find-0.16
REVISION=		0
CATEGORIES=		www
USE_GROFF =		Yes

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		www/p5-URI>=1.00
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
