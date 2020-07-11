# $OpenBSD: Makefile,v 1.3 2020/07/11 22:54:39 sthen Exp $

COMMENT=	low-level C software development kit for the Yubico YubiKey

YK_PROJECT=	yubico-c
DISTNAME=	libyubikey-1.13
REVISION=	3

SHARED_LIBS +=  yubikey              0.0      # 1.4

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

WANTLIB += c

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
