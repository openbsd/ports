# $OpenBSD: Makefile,v 1.2 2019/04/29 16:27:25 sthen Exp $

COMMENT=	low-level C software development kit for the Yubico YubiKey

YK_PROJECT=	yubico-c
DISTNAME=	libyubikey-1.13
REVISION=	2

SHARED_LIBS +=  yubikey              0.0      # 1.4

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

WANTLIB += c

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
