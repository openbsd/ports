# $OpenBSD: Makefile,v 1.11 2014/06/11 13:49:46 sthen Exp $

COMMENT=	C library for the Yubikey OTP token

DISTNAME=	libyubikey-1.12
SHARED_LIBS +=  yubikey              0.0      # 1.4
CATEGORIES=	devel security

HOMEPAGE=	http://yubico.github.io/yubico-c/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://yubico.github.io/yubico-c/releases/

WANTLIB += c

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
