# $OpenBSD: Makefile,v 1.9 2013/05/14 23:49:52 sthen Exp $

COMMENT=	C library for the Yubikey OTP token

DISTNAME=	libyubikey-1.10
SHARED_LIBS +=  yubikey              0.0      # 1.4
CATEGORIES=	devel security

HOMEPAGE=	http://yubico.github.io/yubico-c/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://yubico.github.io/yubico-c/releases/

WANTLIB += c

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
