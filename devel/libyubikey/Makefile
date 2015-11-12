# $OpenBSD: Makefile,v 1.13 2015/11/12 14:08:49 sthen Exp $

COMMENT=	library to encode and decode the YubiKey OTP format

DISTNAME=	libyubikey-1.13
REVISION=	0
SHARED_LIBS +=  yubikey              0.0      # 1.4
CATEGORIES=	devel security

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE=	https://developers.yubico.com/yubico-c/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://developers.yubico.com/yubico-c/releases/

WANTLIB += c

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
