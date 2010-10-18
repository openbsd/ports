# $OpenBSD: Makefile,v 1.9 2010/10/18 21:41:46 espie Exp $

COMMENT=	perl interface to the SASL auth framework

MODULES=	cpan
DISTNAME=	Authen-SASL-2.12
CATEGORIES=	security

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GROFF =	Yes
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::security/p5-Digest-HMAC \
		::security/p5-GSSAPI

.include <bsd.port.mk>
