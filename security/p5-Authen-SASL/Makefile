# $OpenBSD: Makefile,v 1.6 2007/04/12 18:59:36 jasper Exp $

COMMENT=	"perl interface to the SASL auth framework"

MODULES=	cpan
DISTNAME=	Authen-SASL-2.10
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	security

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::security/p5-Digest-HMAC \
		::security/p5-GSSAPI

.include <bsd.port.mk>
