# $OpenBSD: Makefile,v 1.10 2013/10/19 13:29:53 sthen Exp $

COMMENT=	C library for the Yubikey OTP token

DISTNAME=	libyubikey-1.11
SHARED_LIBS +=  yubikey              0.0      # 1.4
CATEGORIES=	devel security

HOMEPAGE=	http://yubico.github.io/yubico-c/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://yubico.github.io/yubico-c/releases/

WANTLIB += c

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
