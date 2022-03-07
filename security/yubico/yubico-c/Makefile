COMMENT=	low-level C software development kit for the Yubico YubiKey

YK_PROJECT=	yubico-c
DISTNAME=	libyubikey-1.13
REVISION=	4

SHARED_LIBS +=  yubikey              0.0      # 1.4

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

WANTLIB += c

CONFIGURE_STYLE=	gnu

# due to patch
BUILD_DEPENDS=	textproc/asciidoc

.include <bsd.port.mk>
