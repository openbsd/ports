# $OpenBSD: Makefile,v 1.1.1.1 2007/05/05 09:22:26 espie Exp $

SHARED_ONLY=		Yes
COMMENT=		"XS speed-up for Class-C3"

MODULES=		cpan
DISTNAME=		Class-C3-XS-0.01_06
CATEGORIES=		devel
CPAN_AUTHOR=		BLBLACK

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		:p5-Class-C3->=0.15:devel/p5-Class-C3

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
