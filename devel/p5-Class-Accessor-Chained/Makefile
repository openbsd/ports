# $OpenBSD: Makefile,v 1.2 2006/11/25 16:32:34 espie Exp $

COMMENT=		"make chained accessors"

MODULES=		cpan
DISTNAME=		Class-Accessor-Chained-0.01
CATEGORIES=		devel

MAINTAINER=		Sean Comeau <scomeau@obscurity.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		::devel/p5-Class-Accessor
RUN_DEPENDS=		${BUILD_DEPENDS}

.include <bsd.port.mk>
