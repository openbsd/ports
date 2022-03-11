COMMENT=	Yubico Personal Identity Verification (PIV) Tool

HOMEPAGE=	https://developers.yubico.com/yubico-piv-tool/

YK_PROJECT=	yubico-piv-tool
DISTNAME=	yubico-piv-tool-1.6.2
REVISION=	1

SHARED_LIBS +=  ykcs11                    0.0 # 5.4
SHARED_LIBS +=  ykpiv                     0.0 # 5.4

CATEGORIES=	sysutils

WANTLIB +=	c pthread crypto pcsclite

BUILD_DEPENDS=	devel/check \
		devel/help2man
LIB_DEPENDS=	security/pcsc-lite

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-doxygen-doc

post-patch:
	${SUBST_CMD} ${WRKSRC}/tool/tests/basic.sh

.include <bsd.port.mk>
