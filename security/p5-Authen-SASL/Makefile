# $OpenBSD: Makefile,v 1.13 2014/04/21 12:27:11 ajacoutot Exp $

COMMENT=	perl interface to the SASL auth framework

MODULES=	cpan
DISTNAME=	Authen-SASL-2.12
REVISION=	1
CATEGORIES=	security

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes

USE_GROFF =	Yes
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	security/p5-Digest-HMAC

.include <bsd.port.mk>
