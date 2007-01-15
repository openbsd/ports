# $OpenBSD: Makefile,v 1.2 2007/01/15 17:40:10 simon Exp $

COMMENT=	"Triple-DES EDE encryption/decryption"

MODULES=	cpan
DISTNAME=	Crypt-DES_EDE3-0.01
PKGNAME=	p5-Crypt-DES-EDE3-0.01
CATEGORIES=	security

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::security/p5-Crypt-DES

.include <bsd.port.mk>
