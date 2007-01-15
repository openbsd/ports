# $OpenBSD: Makefile,v 1.5 2007/01/15 17:40:10 simon Exp $

COMMENT=	"perl interface to the SASL auth framework"

MODULES=	cpan
DISTNAME=	Authen-SASL-2.10
CATEGORIES=	security

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::security/p5-Digest-HMAC \
		::security/p5-GSSAPI

.include <bsd.port.mk>
