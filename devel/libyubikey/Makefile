# $OpenBSD: Makefile,v 1.12 2015/03/16 09:48:00 sthen Exp $

COMMENT=	C library for the Yubikey OTP token

DISTNAME=	libyubikey-1.13
SHARED_LIBS +=  yubikey              0.0      # 1.4
CATEGORIES=	devel security

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE=	http://yubico.github.io/yubico-c/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://yubico.github.io/yubico-c/releases/

WANTLIB += c

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
