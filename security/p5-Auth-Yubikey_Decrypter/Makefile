# $OpenBSD: Makefile,v 1.2 2019/07/12 20:49:06 sthen Exp $

COMMENT=	decrypt one-time-password for a YubiKey

DISTNAME=	Auth-Yubikey_Decrypter-0.07

CATEGORIES=	security

MAINTAINER=	Julien Dhaille <julien@dhaille.com>

PKG_ARCH=	*

# Perl
PERMIT_PACKAGE=	Yes

MODULES=	cpan
CPAN_AUTHOR=	MASSYN

RUN_DEPENDS=	security/p5-Crypt-Rijndael

.include <bsd.port.mk>
