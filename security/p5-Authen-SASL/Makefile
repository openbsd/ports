# $OpenBSD: Makefile,v 1.12 2013/03/11 11:41:26 espie Exp $

COMMENT=	perl interface to the SASL auth framework

MODULES=	cpan
DISTNAME=	Authen-SASL-2.12
REVISION=	0
CATEGORIES=	security

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes

USE_GROFF =	Yes
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	security/p5-Digest-HMAC \
		security/p5-GSSAPI

.include <bsd.port.mk>
