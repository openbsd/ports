# $OpenBSD: Makefile,v 1.1.1.1 2018/04/10 12:08:52 landry Exp $

COMMENT=	decrypt one-time-password for a YubiKey

DISTNAME=	Auth-Yubikey_Decrypter-0.07

CATEGORIES=	security

MAINTAINER=	Julien Dhaille <julien@dhaille.com>

PKG_ARCH=	*

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
CPAN_AUTHOR=	MASSYN

RUN_DEPENDS=	security/p5-Crypt-Rijndael

.include <bsd.port.mk>
