# $OpenBSD: Makefile,v 1.19 2008/10/06 17:01:16 jasper Exp $

COMMENT=	cryptographic cipher block chaining mode

MODULES=	cpan
DISTNAME=	Crypt-CBC-2.30
CATEGORIES=	security

RUN_DEPENDS=	:p5-Crypt-DES-*:security/p5-Crypt-DES \
		:p5-Crypt-Blowfish-*:security/p5-Crypt-Blowfish
BUILD_DEPENDS=	${RUN_DEPENDS}

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Crypt-CBC
	${INSTALL_DATA} ${WRKSRC}/eg/*.pl ${PREFIX}/share/examples/p5-Crypt-CBC

.include <bsd.port.mk>	
